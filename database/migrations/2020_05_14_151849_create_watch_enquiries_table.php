<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWatchEnquiriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('watch_enquiries', function (Blueprint $table) {
            $table->Increments('id');
            $table->unsignedInteger('product_detail_id')->nullable();
            $table->foreign('product_detail_id')->references('id')->on('product_details');
            $table->string('product_name', 255);
            $table->string('name', 75);
            $table->string('email', 75);
            $table->string('mob_no', 15);
            $table->string('subject', 255);
            $table->text('message')->nullable();
            $table->timestampTz('created_at')->useCurrent();
            $table->timestampTz('updated_at')->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('watch_enquiries');
    }
}
