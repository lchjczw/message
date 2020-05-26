<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCodeReceivingRecordsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('code_receiving_records', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('project_id');
            $table->integer('phone')->comment('手机');
            $table->integer('country_id')->comment('国家id');
            $table->decimal('amount', 8, 2)->comment('价格');
            $table->string('content')->comment('短信内容');
            $table->tinyInteger('status')->comment('状态');
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
        Schema::dropIfExists('code_receiving_records');
    }
}
