<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStaffsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('staffs', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('dob');
            $table->string('fathername');
            $table->string('nrc');
            $table->string('phone');
            $table->longText('photo');
            $table->date('joineddate');
            $table->date('leavedate');
            $table->string('status');

            //location
            $table->unsignedBigInteger('location_id');

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
        Schema::dropIfExists('staffs');
    }
}
