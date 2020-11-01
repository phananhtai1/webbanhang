<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    protected $table = 'tbl_order';
    protected $primaryKey = 'order_id';
    protected $guarded =[];

    public function shipping(){
        return $this->belongsTo('App\Models\Shipping','order_shipping','order_id');
    }

    public function order_details(){
        return $this->hasMany('App\Models\OrderDetails','order_id','order_id');
    }
}
