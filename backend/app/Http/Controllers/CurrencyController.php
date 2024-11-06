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

    private $backupExchangeRates = [
        'USD' => 1135,
        'EUR' => 1088,
        'UYU' => 23.8543,
        'BRL' => 172,
        'CLP' => 1.0383
    ];

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
            }
            throw new \Exception("No se encontró la tasa de cambio para la moneda: $currency");
        } catch (\Exception $e) {
            Log::error("Error en fetchExchangeRate: " . $e->getMessage());

            return $this->backupExchangeRates[$currency] ?? null;
        }
    }

    public function convertPrices($items, $currency)
    {
        if ($currency === 'ARS') {
            return $items;
        }

        try {
            $exchangeRate = $this->fetchExchangeRate($currency);

            if (!$exchangeRate) {
                throw new \Exception("No se pudo obtener el tipo de cambio para $currency");
            }

            $client = new \SoapClient('http://www.dneonline.com/calculator.asmx?WSDL', [
                'trace' => true,
                'exceptions' => true
            ]);

            foreach ($items as $item) {
                $params = [
                    'intA' => $item->precio,
                    'intB' => $exchangeRate
                ];

                try {
                    $result = $client->__soapCall('Divide', [$params]);
                    $newPrice = $result->DivideResult;

                    $item->precio = number_format($newPrice, 2, '.', '');
                } catch (\Exception $e) {
                    Log::error("Error en la conversión de precios con SOAP: " . $e->getMessage());
                    $item->precio = null;
                    $item->error = "Error en la conversión a $currency. Intente más tarde.";
                }
            }

            return $items;
        } catch (\Exception $e) {
            Log::error("Error en convertPrices: " . $e->getMessage());
            foreach ($items as $item) {
                $item->precio = null;
                $item->error = "No pudimos convertir el precio a la moneda seleccionada. Por favor, intente más tarde.";
            }
            return $items;
        }
    }

    private function getCurrencyName($currencyCode)
    {
        try {
            $client = new \SoapClient('http://webservices.oorsprong.org/websamples.countryinfo/CountryInfoService.wso?WSDL', [
                'trace' => true,
                'exceptions' => true
            ]);

            $params = [
                'sCurrencyISOCode' => $currencyCode
            ];

            $response = $client->__soapCall('CurrencyName', [$params]);

            return $response->CurrencyNameResult ?? $currencyCode;
        } catch (\Exception $e) {
            Log::error("Error obteniendo el nombre de la moneda para {$currencyCode}: " . $e->getMessage());
            return $currencyCode;
        }
    }

    public function getAvailableCurrencies()
    {
        $currencies = [];

        foreach ($this->supportedCountries as $country => $currencyCode) {
            $currencyName = $this->getCurrencyName($currencyCode);
            $currencies[] = [
                'code' => $currencyCode,
                'name' => $currencyName
            ];
        }

        return response()->json($currencies);
    }
}
