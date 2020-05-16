@extends('layouts.app')

@section('content')
    @if(Session:: has('success'))
        <div>
            <p> {{Session::get('success')}}</p>
        </div>
        @endif




    <div class="col-md-4 container   bg-default" >

        <h4 class="my-4">
            Billing Address
        </h4>

        <form action="/checkout"  method="post" id="checkout-form">
            @csrf
            <div class="form-row ">
                <div class="  form-group">
                    <label for=" name"> Name</label>
                    <input type="text" class="form-control" id=" name" name="name" placeholder="  Name" required>
                    <div class="invalid-feedback">
                        Valid first name is required.
                    </div>
                </div>
                <div class="form-group">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" id="address" name="address" placeholder="1234 Main Street" required>
                    <div class="invalid-feedback">
                        Please enter your shipping address.
                    </div>
                </div>

            </div>

            <hr>


            <h4 class="mb-4">Payment</h4>



            <div class="row mt-4">
                <div class="col-md-6 form-group">
                    <label for="card-name">Name on card</label>
                    <input type="text" class="form-control" id="card-name" placeholder required>
                    <div class="invalid-feedback">
                        Name on card is required
                    </div>
                </div>

                <div class="col-md-6 form-group">
                    <label for="card-no">Card Number</label>
                    <input type="text" class="form-control" id="card-no" placeholder required>
                    <div class="invalid-feedback">
                        Credit card number is required
                    </div>
                </div>
            </div>

            <div class="form-row">
                <div class="col-md-5 form-group">
                    <label for="expiration">Expire Date</label>
                    <input type="text" class="form-control" id="card-name" placeholder required>
                    <div class="invalid-feedback">
                        Expiration date required
                    </div>
                </div>


                <div class="col-md-5 form-group">
                    <label for="ccv-no">Security Number</label>
                    <input type="text" class="form-control" id="sec-no" placeholder required>
                    <div class="invalid-feedback">
                        Security code required
                    </div>
                </div>
            </div>

            <hr class="mb-4">
            <h4>Your Total: ${{$total}}</h4>
            {{csrf_field()}}
            <button class="btn btn-primary bt-lg btn-block badge-dark" type="submit">Buy</button>
        </form>
    </div>






@endsection('content')
