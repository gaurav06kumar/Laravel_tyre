<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tyre;
use App\Order;
use App\feedback;
use App\Cart;
use Auth;
use Illuminate\Support\Facades\DB;
use Redirect;
use phpDocumentor\Reflection\DocBlock\Tags\Reference\Url;
use  Session;



class TyreController extends Controller
{
    //this function return all the tyre on the tyre page
    public function index()
    {

        $tyre=Tyre::all();

            return view('tyre',['tyre'=>$tyre]);



    }
    //end function


    //this function return the create page where we can add new tyre to database
    public function create()
    {
       return view('create');
    }
    //end function


    //this function store the tyre details from create page
    public function store()

    {
       $tyre=new Tyre();
       $tyre->name=request('name');
        $tyre->type=request('type');
        $tyre->width=request('width');
        $tyre->profile=request('profile');
        $tyre->rim=request('rim');

        $tyre->price=request('price');

      //  error_log(request('price'));
        $tyre->save();
        return redirect('/create')->with('success','Tyre added successfully!');

    }
    //end function

    //adding tyre in the cart
    public function getAddToCart(Request $request,$id )
    {

        $tyre=Tyre::find($id);
         $oldCart=Session::has('cart')?Session::get('cart'):null;
         $cart=new Cart( $oldCart);
         $cart->add($tyre,$tyre->id,$tyre->type,$tyre->width,$tyre->profile,$tyre->rim);
        $request->session()->put('cart',$cart);

        //return Redirect::to('search', $request);
     //  return redirect()->back() ;
      return  redirect('/tyre');


    }
    //end function

    //remove the item one by one in the cart
    public function getReduceByOne(  $id)
    {
        $oldCart=Session::has('cart')?Session::get('cart'):null;
        $cart=new Cart( $oldCart);
        $cart->reduceByOne($id);

        if(count($cart->items )>0)
        {
            Session::put('cart',$cart);
        }
        else
        {
            Session::forget('cart');
        }

        return redirect('/cart');

    }
    //end function


    //remove all the item the cart
    public function getRemoveItem($id)
    {
        $oldCart=Session::has('cart')?Session::get('cart'):null;
        $cart=new Cart( $oldCart);
        $cart->removeItem($id);

        if(count($cart->items )>0)
        {
            Session::put('cart',$cart);
        }
        else
            {
                Session::forget('cart');
            }


        return redirect('/cart');
    }
    //end function

    // this function is checking the cart
     public function getCart()
     {
         if(!Session::has('cart'))
         {
             return view('cart' );
         }
         $oldCart=Session::get('cart');
         $cart=new Cart($oldCart);
         return view ('cart',['tyre'=>$cart->items,'totalPrice'=>$cart->totalPrice]);


     }

    //end function

    //go to checkout page
     public function  checkout()
     {
         if(!Session::has('cart'))
         {
             return view('cart' );
         }
         $oldCart=Session::get('cart');
         $cart=new Cart($oldCart);
         $total=$cart->totalPrice;
         return view('checkout',['total'=>$total]);
     }

    //end function

    //store the order details and complete the order
     public function postcheckout(Request $request)
     {
         if(!Session::has('cart'))
         {
             return redirect('/cart' );
         }
         $oldCart=Session::get('cart');
         $cart=new Cart($oldCart);
         Session::forget('cart');
         $order=new Order();

         $order->cart=serialize($cart);
         $order->address=$request->input('address');
         $order->name=$request->input('name');
         Auth::user()->orders()->save($order);

         //return redirect('/')->with('msg','order successfully created');
         return redirect('/tyre')->with('success','order successfully created');

     }

    //end function


    // with this function user can search the tyre
    public function search(Request $request){
        $width = request( 'width' );
        $profile = request( 'profile' );
        $rim = request( 'rim' );
        $result=DB::table('tyre')->where ( 'width', '='  ,$width  )->Where ( 'profile','='  ,   $profile  )->Where ( 'rim', '='  ,  $rim )->get ();

//        return $result;
//        if (count ( $result ) > 0)
//        {
//            return view ( '/search' )->withDetails ( $result )->withQuery (  $width.'-'.$profile.'-'.$rim );
//
//
//        }
//        else{
//            return  view ( '/search' )->with('error','order successfully created');
//
//        }
        return view ( '/search' )->withDetails ( $result )->withQuery (  $width.'-'.$profile.'-'.$rim );

    }
    //end function

    // store the feedback into database
    public function feedback()

    {
        $post=new feedback();
        $post->name=request('txtName');
        $post->email=request('txtEmail');
        $post->phone_no=request('txtPhone');
        $post->message=request('txtMsg');


        $post->save();
        return redirect('/contact');
    }
    //end function
}
