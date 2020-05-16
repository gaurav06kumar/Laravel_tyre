@extends('layouts.app')

@section('content')


    <div class="container contact-form">

        <form action="/contact" method="post">
            @csrf
            <h3>Contact Us</h3>
            <br>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <input type="text" name="txtName" id="txtName" class="form-control" placeholder="Your Name *" required />
                    </div>
                    <div class="form-group">
                        <input type="text" name="txtEmail"  id="txtEmail" class="form-control" placeholder="Your Email *"required />
                    </div>
                    <div class="form-group">
                        <input type="text" name="txtPhone" id="txtPhone" class="form-control" placeholder="Your Phone Number *" required />
                    </div>
                    <div class="form-group  ">
                        <input type="submit" value="Submit" class="btnContact badge-dark    "   />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <textarea name="txtMsg"  id="txtMsg" class="form-control" placeholder="Your Message *" style="width: 100%; height: 150px;"></textarea>
                    </div>
                </div>
            </div>
        </form>
    </div>

@endsection('content')
