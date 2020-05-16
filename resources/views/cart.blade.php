@extends('layouts.app')

@section('content')


    @if(Session::has('cart'))
        <div class="pb-5">
            <br>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
                        <!-- Shopping cart table -->
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th scope="col" class="border-0 bg-light">
                                        <div class="p-2 px-3 text-uppercase">Product</div>
                                    </th>
                                    <th scope="col" class="border-0 bg-light">
                                        <div class="py-2 text-uppercase">Price</div>
                                    </th>
                                    <th scope="col" class="border-0 bg-light">
                                        <div class="py-2 text-uppercase">Quantity</div>
                                    </th>
                                    <th scope="col" class="border-0 bg-light">
                                        <div class="py-2 text-uppercase">Remove By One </div>
                                    </th>
                                    <th scope="col" class="border-0 bg-light">
                                        <div class="py-2 text-uppercase">Remove All</div>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($tyre as $tyre)

                                    <tr>
                                        <th scope="row" class="border-0">
                                            <div class="p-2">
                                                <img src=" /img/tyre.png" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                <div class="ml-3 d-inline-block align-middle">
                                                    <h5 class="mb-0">  {{$tyre['item']['name']}}</h5><span class="text-muted font-weight-normal   d-block">Type: {{$tyre['item']['type'] }}</span>
                                                    <span class="text-muted font-weight-normal   d-block">Size:  {{$tyre['item']['width'] }}-{{$tyre['item']['profile'] }}-{{$tyre['item']['rim'] }}</span>

                                                </div>
                                            </div>
                                        </th>
                                        <td class="border-0 align-middle"><strong>${{$tyre['price']}}</strong></td>
                                        <td class="border-0 align-middle"><strong>{{ $tyre['qty'] }}</strong></td>

                                        <td class="border-0 align-middle"><a href="{{ route('tyre.ReduceByOne',['id'=>$tyre['item']['id'] ])  }} " class="text-dark"><i class="fa fa-trash"></i></a></td>
                                        <td class="border-0 align-middle"><a href="{{ route('tyre.remove',['id'=>$tyre['item']['id'] ])  }} " class="text-dark"><i class="fa fa-trash"></i></a></td>
                                    </tr>



                                @endforeach



                                </tbody>
                            </table>
                        </div>
                        <!-- End -->



                    </div>
                </div>
            </div>
        </div>


        <div class="row py-5 p-4 bg-white rounded shadow-sm flex-center">

                                    <div class="col-lg-6" >
                                        <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Order summary </div>
                                        <div class="p-4">

                                            <ul class="list-unstyled mb-4">
                                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Order Subtotal </strong><strong>${{$totalPrice}}</strong></li>

                                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tax</strong><strong>$0.00</strong></li>
                                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total</strong>
                                                    <h5 class="font-weight-bold">${{$totalPrice}}</h5>
                                                </li>
                                            </ul><a href="/checkout" class="btn btn-dark rounded-pill py-2 btn-block">Procceed to checkout</a>
                                        </div>
                                    </div>
                                </div>




    @else
        <div class="container-fluid mt-100">
            <div class="row">
                <div class="col-md-12">
                    <br>
                    <div class="card">
                        <div class="card-header">
                            <h5>Cart</h5>
                        </div>
                        <div class="card-body cart">
                            <div class="col-sm-12 empty-cart-cls text-center">
                                <h3><strong>Your Cart is Empty</strong></h3>
                                <a href="/tyre" class="btn btn-primary cart-btn-transform m-3 badge-dark" data-abc="true">continue shopping</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif
@endsection('content')
