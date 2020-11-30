<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDiscountsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('discounts', function (Blueprint $table) {
            $table->Increments('id');
            $table->string('discount_by', 50)->nullable();
            $table->string('gender_id')->nullable();
            $table->text('brand_id')->nullable();
            $table->text('product_ids')->nullable();
            $table->string('discount_type',50)->nullable();
            $table->float('max_value', 8, 2)->nullable();
            $table->float('discount_value', 8, 2)->nullable();
            $table->float('discount_upto', 8, 2)->nullable();
            $table->date('discount_activation_date');
            $table->date('discount_expiry_date');
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
        Schema::dropIfExists('discounts');
    }
}
