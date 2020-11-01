<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $table = 'tbl_categories';
    protected $primaryKey = 'cat_id';
    protected $guarded =[];

    public function product(){
        return $this->hasMany('App\Models\Product','prod_cat','cat_id');
    }
}
