<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Shipping extends Model
{
    use HasFactory;
    protected $table = 'tbl_shipping';
    protected $primaryKey = 'shipping_id';
    protected $guarded =[];

    public function order(){
        return $this->hasMany('App\Models\Order','order_shipping','shipping_id');
    }

    public function user(){
        return $this->belongsTo('App\Models\User','shipping_user','shipping_id');
    }
}
