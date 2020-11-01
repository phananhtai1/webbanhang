<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;
    protected $table = 'tbl_comment';
    protected $primaryKey = 'com_id';
    protected $guarded =[];

    public function product(){
        return $this->belongsTo('App\Models\Product','com_product','com_id');
    }
}
