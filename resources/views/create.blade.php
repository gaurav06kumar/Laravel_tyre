@extends('layouts.app')


@section('content')
    @if ($message = Session::get('success'))
        <div class="alert alert-success alert-block">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>{{ $message }}</strong>
        </div>
    @endif
  <br>
    <div class="row py-5 p-4 bg-white rounded shadow-sm flex-center">

        <div class="col-lg-6" >
            <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold text-center" >add new tyre</div>
            <div class="flex-center">

                <form action="/tyre" method="post">
                    <div class="form-row ">
                        <div class="  form-group">
                            <br>

                            @csrf
                            <label for="name">Name:</label>
                            <input type="text" class="form-control"id="name" name="name">

                            <label for="type">Type:</label>
                            <input type="text" class="form-control" id="type" name="type">


                            <label for="width">Width:</label>
                            <input type="text" class="form-control" id="width" name="width">


                            <label for="profile">Profile:</label>
                            <input type="text" class="form-control" id="profile" name="profile">


                            <label for="rim">Rim:</label>
                            <input type="text"  class="form-control"id="rim" name="rim">


                            <label for="price">Price:</label>
                            <input type="text"  class="form-control" id="price" name="price"><br>



                            <input  class="btn btn-dark rounded-pill py-2 btn-block" type="submit" value="Submit">
                        </div>





                    </div>






                </form>
            </div>
        </div>
    </div>




@endsection('content')
