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
            return null;
        } catch (\Exception $e) {
            return null;
        }
    }

    public function convertPrices($items, $currency)
    {
        $exchangeRate = $this->fetchExchangeRate($currency);
        foreach ($items as $item) {
            if ($exchangeRate) {
                $newPrice = $item->precio / $exchangeRate;
                $item->precio = number_format($newPrice, 2, '.', '');
            } else {
                $item->precio = null;
            }
        }
        return $items;
    }
}
