<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSectionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sections', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('codeno');
            $table->string('title');
            $table->date('startdate');
            $table->date('enddate');


            //duration
            $table->unsignedBigInteger('duration_id');

            //teacher
            // $table->unsignedBigInteger('teacher_id');

            //user
            $table->unsignedBigInteger('user_id');

            $table->timestamps();
        });

        Schema::create('section_teacher', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('section_id');
            $table->unsignedBigInteger('teacher_id');
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
        Schema::dropIfExists('sections');
    }
}
