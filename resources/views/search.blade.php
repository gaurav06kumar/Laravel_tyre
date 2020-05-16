@extends('layouts.app')

@section('content')
    <br>




    <div class="container-fluid    flex-center  px-lg-5">

        <form action="/search" method="POST" role="search">
            {{ csrf_field() }}
            <div class="row     ">
                <input type="text"    placeholder="Width" name="width"  required >
                <input type="text" placeholder="Profile" name="profile"  required >
                <input type="text" placeholder="Rim" name="rim"  required >
                <button type="submit" class="badge-dark" value="submit">  <i class="fa fa-search  text-light"></i></button>
            </div>


        </form>

    </div>
    <br>





    <div class="container-fluid ">

@if(count($details)>0)
        @isset($details)
            <br>
            <p> The Search results for  <b> {{ $query }} </b> are :</p>
            <div class="px-lg-5">
                <br>
                <div class="row">



                    @foreach($details as $tyre)
                        <div class="col-xl-3 col-lg-4 col-md-6 mb-4">

                            <div class="bg-white rounded shadow-sm"> <br> <img src= "/img/tyre.png"  alt="Generic placeholder image" width="100" class="ml-lg-5 order-1 order-lg-2" alt="" class="img-fluid card-img-top">
                                <div class="p-4">
                                    <h5> {{$tyre->name}}</h5>
                                    <p class="small text-muted mb-0">Type-{{$tyre->type}} </p>
                                    <p class="small text-muted mb-0">Width-{{$tyre->width}}  Profile-{{$tyre->profile}} Rim-{{$tyre->rim}}</p>
                                    <h6 class="font-weight-bold my-2">${{$tyre->price}}</h6>

                                    <div  >

                                        <a href="{{route('tyre.addToCart',['id'=>$tyre->id])}}" class="btn btn-primary badge-dark   btn-block rounded-pill shadow-sm " role="button">add to cart</a>
                                    </div>

                                </div>

                            </div>
                        </div>
                        <!-- End -->
                    @endforeach





                </div>

            </div>

        @endisset
        @else
            <div class="alert alert-success alert-block">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong>No Tyre Found for size: {{ $query }}</strong>
            </div>
        @endif





    </div>




@endsection('content')
