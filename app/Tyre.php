<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tyre extends Model
{
   protected $table = 'Tyre';
    protected $fillable = ['name','type','width','profile','rim','price'];
}

