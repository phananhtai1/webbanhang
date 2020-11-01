<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TblOrderDetails extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_order_details', function (Blueprint $table) {
            $table->increments('order_details_id');
            $table->integer('order_id')->unsigned();
            $table->foreign('order_id')
                ->references('order_id')
                ->on('tbl_order')
                ->onDelete('cascade');
            $table->integer('prod_id')->unsigned();
            $table->foreign('prod_id')
                ->references('prod_id')
                ->on('tbl_products')
                ->onDelete('cascade');
            $table->integer('quantity');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_order_details');
    }
}
