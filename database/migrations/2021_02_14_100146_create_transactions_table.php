<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransactionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('village_id');
            $table->unsignedBigInteger('product_id');
            $table->string('unit');
            $table->decimal('price_basic', 15, 2);
            $table->decimal('price_sell', 15, 2);
            $table->tinyInteger('qty_sold');
            $table->tinyInteger('qty_stock');
            $table->decimal('total_sell', 15, 2);
            $table->decimal('total_stock', 15, 2);
            $table->date('date');
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
        Schema::dropIfExists('transactions');
    }
}
