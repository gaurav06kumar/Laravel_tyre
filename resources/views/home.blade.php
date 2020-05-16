@extends('layouts.app')


@section('content')























                        <div class="container-fluid my-3 d-flex justify-content-center">
                            <div class="card card-1">
                                <div class="card-header bg-white">
                                    <div class="media flex-sm-row flex-column-reverse justify-content-between ">
                                        <div class="col my-auto">
                                            <h4 class="mb-0">  My Order<span class="change-color"></span></h4>
                                            <div class="card-body">
                                                @if (session('status'))
                                                    <div class="alert alert-success" role="alert">
                                                        {{ session('status') }}
                                                    </div>
                                                @endif
                                        </div>

                                    </div>
                                </div>
                                @foreach($orders as $order)

                                    @foreach($order->cart->items as $item)


                                        <div class="card-body">
                                            <div class="row mt-0">
                                                <div class="col">
                                                    <div class="card card-2">
                                                        <div class="card-body">
                                                            <div class="media">

                                                                <div class="media-body my-auto text-right">
                                                                    <div class="row my-auto flex-column flex-md-row">
                                                                        <div class="col-auto my-auto ">
                                                                            <h6 class="mb-0">  {{$item['item']['name']}}</h6>
                                                                        </div>
                                                                        <div class="col my-auto "> <small> {{$item['item']['type']}} </small></div>
                                                                        <div class="col my-auto "> <small>Size:  {{$item['item']['width'] }}.{{$item['item']['profile'] }}.{{$item['item']['rim'] }}</small></div>
                                                                        <div class="col my-auto "> <small>Qty :  {{$item['qty']}}</small></div>
                                                                        <div class="col my-auto ">
                                                                            <h6 class="mb-0">${{$item['price']}}</h6>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>

                                    @endforeach

                                    <div class="card-footer">
                                        <div>
                                            <div class="row justify-content-between ">

                                                <div class="col-auto my-auto ">
                                                    <p class="mb-0  ">TOTAL PAID</p>
                                                </div>
                                                <div class="col-auto my-auto ml-auto">
                                                    <p  >${{$order->cart->totalPrice}}</p>
                                                </div>
                                            </div>

                                        </div>
                                    </div>




                                @endforeach



                            </div>
                        </div>


















@endsection


