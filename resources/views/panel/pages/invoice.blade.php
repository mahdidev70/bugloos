@extends('panel.base')

@section('content')
<div class="row">
    <section class="invoice">
        <!-- title row -->
        <div class="row">
            <div class="col-xs-12">
                <h2 class="page-header">
                    <i class="fa fa-globe"></i> پیش‌فاکتور فروش
                    <small class="pull-left">۳ مرداد ۱۳۹۶</small>
                </h2>
            </div>
            <!-- /.col -->
        </div>
        <!-- info row -->
        <div class="row invoice-info">
            <div class="col-sm-4 invoice-col">
                از
                <address>
                    <strong>شرکت ادمین</strong><br>
                    آدرس من<br>
                    خیابان<br>
                    تلفن: 123-5432<br>
                    ایمیل: info@hosseinizadeh.ir
                </address>
            </div>
            <!-- /.col -->
            <div class="col-sm-4 invoice-col">
                به
                <address>
                    <strong>خریدار</strong><br>
                    آدرس خریدار<br>
                    خیابان<br>
                    تلفن: 123-5432<br>
                    ایمیل: info@example.com
                </address>
            </div>
            <!-- /.col -->
            <div class="col-sm-4 invoice-col">
                <b>سفارش #007612</b><br>
                <br>
                <b>کد سفارش:</b> 4F3S8J<br>
                <b>تاریخ پرداخت:</b> ۳ مرداد ۱۴۰۱<br>
                <b>اکانت:</b> 968-34567
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

        <!-- Table row -->
        <div class="row">
            <div class="col-xs-12 table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>تعداد</th>
                            <th>محصول</th>
                            <th>سریال</th>
                            <th>توضیحات</th>
                            <th>قیمت کل</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Call of Duty</td>
                            <td>455-981-221</td>
                            <td>بازی جنگی</td>
                            <td> 64.500 تومان</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Need for Speed IV</td>
                            <td>247-925-726</td>
                            <td>بازی ماشینی</td>
                            <td>50.000 تومان</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Monsters DVD</td>
                            <td>735-845-642</td>
                            <td>بازی خیابانی</td>
                            <td>10.700 تومان</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Grown Ups Blue Ray</td>
                            <td>422-568-642</td>
                            <td>بازی فکری</td>
                            <td>25.990 تومان</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

        <div class="row">
            <!-- accepted payments column -->
            <div class="col-xs-6">
                <p class="lead">روش های پرداخت</p>
                <img src="../../dist/img/credit/visa.png" alt="Visa">
                <img src="../../dist/img/credit/mastercard.png" alt="Mastercard">
                <img src="../../dist/img/credit/american-express.png" alt="American Express">
                <img src="../../dist/img/credit/paypal2.png" alt="Paypal">

                <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
                    اطلاعات فیک است و مبلغ قابل پرداخت ۵۰۰ تومان می باشد. لطفا شماره کارت خود را وارد کنید
                </p>
                <form class="form-horizontal" action="{{route('pay')}}" method="POST">
                @csrf
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">شماره کارت</label>

                        <div class="col-sm-8">
                            <input type="number" name="card_number" class="form-control input-lg" id="inputEmail3" placeholder="شماره کارت">
                        </div>
                    </div>
            </div>
            <!-- /.col -->
            <div class="col-xs-6">
                <p class="lead">مهلت پرداخت: ۱۳ مرداد ۱۴۰۲</p>

                <div class="table-responsive">
                    <table class="table">
                        <tr>
                            <th style="width:50%">مبلغ کل:</th>
                            <td>250.300 تومان</td>
                        </tr>
                        <tr>
                            <th>مالیات (9.3%)</th>
                            <td>10.340 تومان</td>
                        </tr>
                        <tr>
                            <th>تخفیف</th>
                            <td>5.800 تومان</td>
                        </tr>
                        <tr>
                            <th>مبلغ قابل پرداخت:</th>
                            <td>500 تومان</td>
                        </tr>
                    </table>
                </div>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

        <!-- this row will not appear when printing -->
        <div class="row no-print">
            <div class="col-xs-12">
            
                    <a href="#" target="_blank" class="btn btn-default"><i class="fa fa-print"></i>
                        پرینت</a>
                    <button type="submit" class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> تایید و
                        پرداخت
                    </button>
                    <button type="button" class="btn btn-primary pull-right" style="margin-right: 5px;">
                        <i class="fa fa-download"></i> دانلود صورت حساب
                    </button>
                </form>
            </div>
        </div>
    </section>
</div>
@endsection