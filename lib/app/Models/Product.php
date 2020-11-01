<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $table = 'tbl_products';
    protected $primaryKey = 'prod_id';
    protected $guarded =[];

    public function category(){
        return $this->belongsTo('App\Models\Category','prod_cat','prod_id');
    }

    public function comment(){
        return $this->hasMany('App\Models\Comment','com_product','prod_id');
    }

    public function order_details(){
        return $this->hasMany('App\Models\OrderDetails','prod_id','prod_id');
    }
}
