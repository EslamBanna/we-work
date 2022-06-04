<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('project_sub_categories', function (Blueprint $table) {
            $table->id();
            $table->integer('category_id');
            $table->string('sub_category_name_en')->nullable();
            $table->string('sub_category_name_ar')->nullable();
            $table->string('main_photo')->nullable();
            $table->string('title1_ar')->nullable();
            $table->string('title1_en')->nullable();
            $table->string('title2_ar')->nullable();
            $table->string('title2_en')->nullable();
            $table->text('description1_ar')->nullable();
            $table->text('description2_en')->nullable();
            $table->string('photo1')->nullable();
            $table->string('photo2')->nullable();
            $table->string('photo3')->nullable();
            $table->string('photo4')->nullable();
            $table->string('photo5')->nullable();
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
        Schema::dropIfExists('project_sub_categories');
    }
};
