<?php

namespace App\Services;

class Paystar
{

    public function Create(array $data)
    {
        $sign = hash_hmac(
            'sha512',
            $data['amount'] . '#' . $data['id'] . '#' . route('verify.payment'),
            env('SIGN')
        );

        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://core.paystar.ir/api/pardakht/create',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => '{
    "callback": "' . route('verify.payment') . '",
    "amount": ' . $data['amount'] . ',
    "order_id": "' . $data['id'] . '",
    "callback_method": 1,
    "sign": "' . $sign . '"
}',
            CURLOPT_HTTPHEADER => array(
                'Authorization: Bearer ' . env('GATEWAY'),
                'Content-Type: application/json'
            ),
        ));

        $response = json_decode(curl_exec($curl), true);
        curl_close($curl);
        return $response;
    }

    public function Redirect(string $token)
    {
        return redirect('https://core.paystar.ir/api/pardakht/payment?token=' . $token);
    }

    public function Verify(array $data){

        $sign = hash_hmac(
            'sha512',
            $data['payment']['amount'] . '#' . 
            $data['payment']['ref_num'] . '#' . 
            $data['card_number'] . '#' .
            $data['tracking_code'],
            env('SIGN')
        );

        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://core.paystar.ir/api/pardakht/verify',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => '{
    "ref_num": "' . $data['payment']['ref_num'] . '",
    "amount": ' . $data['payment']['amount'] . ',
    "sign": "' . $sign . '"
}',
            CURLOPT_HTTPHEADER => array(
                'Authorization: Bearer ' . env('GATEWAY'),
                'Content-Type: application/json'
            ),
        ));

        $response = json_decode(curl_exec($curl), true);
        curl_close($curl);
        return $response;
    }
}
