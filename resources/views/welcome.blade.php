@extends('layouts.app')

@section('content')

<br>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src=" /img/buy3.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="/img/buy4.png" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="/img/covid.jpg" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


<br>
    <div class="container-fluid">
        <div class="px-lg-5">


            <div class="row">
                <!-- Gallery item -->
                <div class="col-xl-4 col-lg-4  col-md-6 mb-4">
                    <div class="bg-white rounded shadow-sm"><img src=" /img/fuel.jpg" alt="" class="img-fluid card-img-top">
                        <div class="p-4">
                            <h5>  Fuel saving technology</h5>
                            <p class="  text-muted mb-0">Is it possible to reduce your fuel consumption simply by changing your tyres?  </p>

                        </div>
                    </div>
                </div>
                <!-- End -->

                <!-- Gallery item -->
                <div class="col-xl-4 col-lg-4 col-md-6 mb-4">
                    <div class="bg-white rounded shadow-sm"><img src="/img/Road.jpg" alt="" class="img-fluid card-img-top">
                        <div class="p-4">
                            <h5>  Tyre Road Hazard Warranty</h5>
                            <p class=" text-muted  mb-0">Road Hazard Warranty offers you cover for accidental damage for the life of your tyres.</p>

                        </div>
                    </div>
                </div>
                <!-- End -->

                <!-- Gallery item -->
                <div class="col-xl-4 col-lg-4 col-md-6 mb-4">
                    <div class="bg-white rounded shadow-sm"><img src=" /img/Most-Brand.png " alt="" class="img-fluid card-img-top">
                        <div class="p-4">
                            <h5>  New Zealand's most trusted tyres </h5>
                            <p class="  text-muted mb-0">Bridgestone has been named ‘New Zealand's Most Trusted Tyre Brand. </p>

                        </div>
                    </div>
                </div>
                <!-- End -->


    </div>



















            <div class="container-fluid">
                <div class="px-lg-5">


                    <div class="row">
                        <!-- Gallery item -->
                        <div class="col-xl-3 col-lg-4  col-md-6 mb-4">
                            <div class="bg-white rounded shadow-sm"><img src=" /img/t4.jpg" alt="" class="img-fluid card-img-top">
                                <div class="p-4">
                                    <h5>  Dueler 4WD & SUV tyres</h5>
                                    <p class="  text-muted mb-5"> The Dueler range of tyres is tough enough to bring you back.  </p>

                                </div>
                            </div>
                        </div>
                        <!-- End -->

                        <!-- Gallery item -->
                        <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                            <div class="bg-white rounded shadow-sm"><img src="/img/t3.jpg" alt="" class="img-fluid card-img-top">
                                <div class="p-4">
                                    <h5> Ecopia fuel saving tyres</h5>
                                    <p class=" text-muted  mb-0">The Bridgestone Ecopia range can save you fuel without compromising on safety or comfort</p>

                                </div>
                            </div>
                        </div>
                        <!-- End -->

                        <!-- Gallery item -->
                        <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                            <div class="bg-white rounded shadow-sm"><img src=" /img/t1.jpg" alt="" class="img-fluid card-img-top">
                                <div class="p-4">
                                    <h5>  Turanza luxury touring tyres </h5>
                                    <p class="  text-muted mb-0">Sit back and enjoy a quieter, more comfortable and safer drive, in wet or dry conditions. </p>

                                </div>
                            </div>
                        </div>
                        <!-- End -->
                        <!-- Gallery item -->
                        <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                            <div class="bg-white rounded shadow-sm"><img src=" /img/t2.jpg " alt="" class="img-fluid card-img-top">
                                <div class="p-4">
                                    <h5>  MRF performance tyres </h5>
                                    <p class="  text-muted mb-0">Incredible responsiveness and high speed stability, MRF tyres.</p>

                                </div>
                            </div>
                        </div>
                        <!-- End -->


                    </div>
@endsection('content')
