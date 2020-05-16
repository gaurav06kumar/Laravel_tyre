<?php

namespace App;



class Cart
{
    public $items=null;

    public $totalQty = 0;
    public $totalPrice = 0;

    public function __construct($oldCart)
    {
        if($oldCart)
        {
            $this->items=$oldCart->items;
            $this->totalQty=$oldCart->totalQty;
            $this->totalPrice=$oldCart->totalPrice;

        }
    }

    //adding item into cart
    public function add($item,$id)
    {
        $storedItem=['qty'=>0,'price'=>$item->price,'item'=>$item,'type'=>$item->type,'width'=>$item->width,'profile'=>$item->profile,'rim'=>$item->rim ,'id'=>$item->id];
        if($this->items)
        {
            if(array_key_exists($id,$this->items))
            {
                $storedItem=$this->items[$id];
            }

        }
        $storedItem['qty']++;
        $storedItem['price']=$item->price * $storedItem['qty'];
        $this->items[$id]=$storedItem;
        $this->totalQty++;
        $this->totalPrice +=$item->price;

    }

    //delete item one by one in cart
    public function reduceByOne($id)

    {
        $this->items[$id]['qty']--;
        $this->items[$id]['price'] -= $this->items[$id]['item']['price'];
        $this->totalQty--;
        $this->totalPrice -= $this->items[$id]['item']['price'];
       if($this->items[$id]['qty']<=0)
       {
           unset($this->items[$id]);
       }
    }

    //remove all the  cart item
    public function removeItem($id)
    {

        $this->totalQty -= $this->items[$id]['qty'];
        $this->totalPrice -= $this->items[$id]['price'];
        unset($this->items[$id]);
    }



}

