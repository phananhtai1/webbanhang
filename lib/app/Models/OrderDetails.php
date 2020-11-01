<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderDetails extends Model
{
    use HasFactory;
    protected $table = 'tbl_order_details';
    protected $primaryKey = 'order_details_id';
    protected $guarded =[];

    public function product(){
        return $this->belongsTo('App\Models\Product','prod_id','order_details_id');
    }

    public function order(){
        return $this->belongsTo('App\Models\Order','order_id','order_details_id');
    }
}
