<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJobcareersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jobcareers', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('gender');
            $table->date('senddate');
            $table->longText('remark');
            $table->integer('status');

            //company
            $table->unsignedBigInteger('company_id');

            //position
            $table->unsignedBigInteger('position_id');

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
        Schema::dropIfExists('jobcareers');
    }
}
