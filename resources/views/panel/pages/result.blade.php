@extends('panel.base')

@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="box box-default">
      <div class="box-header with-border">
        <i class="fa fa-warning"></i>

        <h3 class="box-title">وضعیت سفارش</h3>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        @if($payment && $payment->status != 1)
        <div class="alert alert-danger alert-dismissible">
          <button type="button" class="close pull-left" data-dismiss="alert" aria-hidden="true">&times;</button>
          <h4><i class="icon fa fa-ban"></i>تراکنش ناموفق</h4>
          پرداخت ناموفق بود! در صورت کسر پول تا ۷۲ ساعت مبلغ به حساب عودت داده می شود. در صورت عدم عودت با پشتیبانی تماس بگیرید.
          <br>
          <b>
            شماره سفارش {{$payment->id}}
          </b>
        </div>
        @endif

        @if($payment && $payment->status == 1)
        <div class="alert alert-success alert-dismissible">
          <button type="button" class="close pull-left" data-dismiss="alert" aria-hidden="true">&times;</button>
          <h4><i class="icon fa fa-check"></i> تراکنش موفق</h4>
          سفارش با موفقیت ثبت شد. به زودی سفارش به آدرس شما ارسال می شود.
          <br>
          <b>
            شماره سفارش {{$payment->id}}
          </b>
        </div>
        @endif
      </div>
      <!-- /.box-body -->
    </div>
    <!-- /.box -->
  </div>
  <!-- /.col -->

  <!-- /.col -->
</div>
@endsection