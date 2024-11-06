<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Http;

class CurrencyController extends Controller
{
    public function fetchExchangeRate($currency)
    {
        try {
            $response = Http::get('https://dolarapi.com/v1/cotizaciones');
            if ($response->successful()) {
                $data = $response->json();
                foreach ($data as $rate) {
                    if ($rate['moneda'] === $currency && $rate['casa'] === 'oficial') {
                        return $rate['venta'];
                    }
                }
            }
            return response()->json(['error' => 'API Error: No se encontró la tasa de cambio'], 500);
        } catch (\Exception $e) {
            return response()->json(['error' => 'API Error: No se pudo conectar a la API'], 500);
        }
    }

    public function fetchExchangeRateSoap($fromCurrency, $toCurrency)
    {
        try {
            $client = new \SoapClient('http://www.dneonline.com/calculator.asmx?WSDL');

            $params = [
                'intOriginalAmount' => 1,
                'strFromCurrency' => $fromCurrency,
                'strToCurrency' => $toCurrency
            ];

            $response = $client->__soapCall('ConversionRate', [$params]);

            if (isset($response->ConversionRateResult)) {
                return $response->ConversionRateResult;
            }

            return response()->json(['error' => 'SOAP Error: No se encontró la tasa de cambio'], 500);
        } catch (\SoapFault $e) {
            return response()->json(['error' => 'SOAP Error: No se pudo conectar al servicio SOAP'], 500);
        }
    }

    public function convertPrices($items, $currency)
    {
        $exchangeRate = null;

        if ($currency !== 'ARS') {
            $exchangeRate = $this->fetchExchangeRate($currency);
        }

        if (!$exchangeRate && $currency !== 'ARS') {
            $exchangeRate = $this->fetchExchangeRateSoap('ARS', $currency);
        }

        foreach ($items as $item) {
            if ($exchangeRate && !isset($exchangeRate['error'])) {
                $newPrice = $item->precio / $exchangeRate;
                $item->precio = number_format($newPrice, 2, '.', '');
            } else {
                $item->precio = null;
                $item->error = $exchangeRate['error'] ?? 'No se pudo obtener el tipo de cambio';
            }
        }

        return $items;
    }
}
