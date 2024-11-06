<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;

class CurrencyController extends Controller
{
    private $supportedCountries = [
        'US' => 'USD',
        'EU' => 'EUR',
        'AR' => 'ARS',
        'UY' => 'UYU',
        'BR' => 'BRL',
        'CL' => 'CLP'
    ];

    public function getAvailableCurrencies()
    {
        try {
            if (Cache::has('available_currencies')) {
                return response()->json([
                    'status' => 'success',
                    'data' => Cache::get('available_currencies')
                ]);
            }

            $client = new \SoapClient('http://webservices.currencysystem.com/currencyserver/?wsdl', [
                'trace' => true,
                'exceptions' => true,
                'connection_timeout' => 5
            ]);

            $currencies = [];

            foreach ($this->supportedCountries as $country => $currencyCode) {
                try {
                    $params = [
                        'licenseKey' => '',
                        'currency' => $currencyCode
                    ];

                    $result = $client->__soapCall('CurrencyName', [$params]);

                    $currencies[] = [
                        'code' => $currencyCode,
                        'name' => $result->CurrencyNameResult,
                        'symbol' => $this->getCurrencySymbol($currencyCode)
                    ];
                } catch (\Exception $e) {
                    Log::error("Error al obtener la moneda {$currencyCode}: " . $e->getMessage());
                    continue;
                }
            }

            if (empty($currencies)) {
                throw new \Exception("No se pudieron obtener las monedas del servicio");
            }

            Cache::put('available_currencies', $currencies, 60 * 24);

            return response()->json([
                'status' => 'success',
                'data' => $currencies
            ]);
        } catch (\Exception $e) {
            Log::error("Error en getAvailableCurrencies: " . $e->getMessage());

            $fallbackCurrencies = [
                ['code' => 'ARS', 'name' => 'Peso Argentino', 'symbol' => '$'],
                ['code' => 'USD', 'name' => 'Dólar Estadounidense', 'symbol' => '$'],
                ['code' => 'EUR', 'name' => 'Euro', 'symbol' => '€'],
                ['code' => 'UYU', 'name' => 'Peso Uruguayo', 'symbol' => '$'],
                ['code' => 'BRL', 'name' => 'Real Brasileño', 'symbol' => 'R$'],
                ['code' => 'CLP', 'name' => 'Peso Chileno', 'symbol' => '$']
            ];

            return response()->json([
                'status' => 'warning',
                'message' => 'Usando lista de monedas predeterminada',
                'data' => $fallbackCurrencies
            ]);
        }
    }

    private function getCurrencySymbol($currencyCode)
    {
        $symbols = [
            'USD' => '$',
            'EUR' => '€',
            'ARS' => '$',
            'UYU' => '$',
            'BRL' => 'R$',
            'CLP' => '$'
        ];

        return $symbols[$currencyCode] ?? $currencyCode;
    }

    public function fetchExchangeRate($currency)
    {
        try {
            $response = Http::timeout(5)->get('https://dolarapi.com/v1/cotizaciones');

            if ($response->successful()) {
                $data = $response->json();
                foreach ($data as $rate) {
                    if ($rate['moneda'] === $currency && $rate['casa'] === 'oficial') {
                        return $rate['venta'];
                    }
                }
                return response()->json([
                    'status' => 'error',
                    'message' => 'Lo sentimos, no pudimos encontrar la cotización para esta moneda. Por favor, intente más tarde.'
                ], 404);
            }

            return response()->json([
                'status' => 'error',
                'message' => 'Hubo un problema al obtener las cotizaciones. Por favor, intente nuevamente en unos minutos.'
            ], 500);
        } catch (\Exception $e) {
            Log::error("Error en fetchExchangeRate: " . $e->getMessage());
            return response()->json([
                'status' => 'error',
                'message' => 'No pudimos conectarnos al servicio de cotizaciones. Por favor, verifique su conexión e intente nuevamente.'
            ], 500);
        }
    }

    public function convertPrices($items, $currency)
    {
        if ($currency === 'ARS') {
            return $items;
        }

        $exchangeRate = null;
        try {
            $exchangeRate = $this->fetchExchangeRate($currency);

            if (!$exchangeRate || isset($exchangeRate['error'])) {
                throw new \Exception('No se pudo obtener el tipo de cambio');
            }

            foreach ($items as $item) {
                $newPrice = $item->precio / $exchangeRate;
                $item->precio = number_format($newPrice, 2, '.', '');
            }

            return $items;
        } catch (\Exception $e) {
            Log::error("Error en convertPrices: " . $e->getMessage());
            foreach ($items as $item) {
                $item->precio = null;
                $item->error = 'No pudimos convertir el precio a la moneda seleccionada. Por favor, intente más tarde.';
            }
            return $items;
        }
    }
}
