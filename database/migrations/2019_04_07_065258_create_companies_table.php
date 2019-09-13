<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCompaniesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('companies', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('logo');
            $table->string('name');
            $table->string('hrname');
            $table->string('phno');
            $table->string('email');
            $table->longText('address');
            $table->longText('remark');
            $table->longText('fblink');

            //township
            $table->unsignedBigInteger('township_id');

            //user
            $table->unsignedBigInteger('user_id');


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
        Schema::dropIfExists('companies');
    }
}
