<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRechargeDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('recharge_details', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('admin_user_id');
            $table->integer('user_id');
            $table->decimal('amount', 8, 2)->comment('充值金额');
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
        Schema::dropIfExists('recharge_details');
    }
}
