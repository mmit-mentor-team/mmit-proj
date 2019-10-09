<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInquiresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inquires', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('inquireno');
            $table->string('receiveno');
            $table->string('name');
            $table->string('gender');
            $table->date('dob')->nullable();
            $table->string('age');
            $table->longText('address')->nullable();
            $table->string('phno');
            $table->string('email')->nullable();
            $table->string('installmentdate');
            $table->string('installmentamount')->default(0);
            $table->longText('remark')->nullable();
            $table->string('position')->nullable();
            $table->string('camp');
            $table->string('education');
            $table->string('acceptedyear')->nullable();
            $table->string('actionstatus')->default(0);

            //section
            $table->unsignedBigInteger('section_id');

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
        Schema::dropIfExists('inquires');
    }
}
