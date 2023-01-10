<?php

namespace App\Http\Controllers\Payment;

use App\Models\Payment;
use App\Services\Paystar;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\PaymentRequest;
use Illuminate\Support\Facades\Auth;

class PaymentController extends Controller
{

    public function createPayment(PaymentRequest $request)
    {
        $payment = Payment::create([
            'user_id' => Auth::id(),
            'amount' => 5000,
            'card_number' => $request->card_number,
        ]);

        $paystar = new Paystar();
        $result = $paystar->Create($payment->toArray());
        $payment->update([
            'message' => [
                'create' => $result
            ],
            'ref_num' => $result['data']['ref_num'],
        ]);

        if ($result['status'] != 1) {
            return $result['message'];
        }

        return $paystar->Redirect($result['data']['token']);
    }

    public function verify(Request $request)
    {
        $payment = Payment::find($request->order_id);

        if ($payment && $payment->status != 1) {
            $verifyAt = null;
            $status = 0;

            if (
                $request->status == 1 &&
                substr($request->card_number, -4) == substr($payment->card_number, -4) &&
                substr($request->card_number, 0, 6) == substr($payment->card_number, 0, 6)
            ) {
                $paystar = new Paystar();
                $result = $paystar->Verify([
                    'payment' => $payment->toArray(),
                    'tracking_code' => $request['tracking_code'],
                    'card_number' => $request['card_number']
                ]);

                if ($result['status'] == 1) {
                    $status = $request->status;
                    $verifyAt = now();
                }
            }

            $payment->update([
                'message' => [
                    'create' => $payment->message['create'],
                    'payment' => $request->all(),
                ],
                'status' => $status,
                'verified_at' => $verifyAt
            ]);
        }
        return redirect(route('result.payment',['order_id'=>$payment->id]));
    }

    public function result(Request $request){
        $payment = Payment::find($request->order_id);
        return view('panel.pages.result', compact('payment'));
    }
}
