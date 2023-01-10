<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('panel.pages.invoice');
})->middleware('auth');

Auth::routes();

Route::post('/pay', [App\Http\Controllers\Payment\PaymentController::class, 'createPayment'])->name('pay')->middleware('auth');
Route::any('/verify', [App\Http\Controllers\Payment\PaymentController::class, 'verify'])->name('verify.payment');
Route::any('/result', [App\Http\Controllers\Payment\PaymentController::class, 'result'])->name('result.payment');

