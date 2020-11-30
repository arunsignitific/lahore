<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_details', function (Blueprint $table) {
            $table->Increments('id');
            $table->string('model_no', 100);
            $table->string('series');
            $table->string('material', 50);
            $table->string('buckle', 50);
            $table->string('size', 50);
            $table->string('shape', 50);
            $table->string('frame_colour', 50);
            $table->string('lens', 50);
            $table->string('visible_ray', 50);
            $table->string('dimensions', 50);
            $table->string('nib', 50);
            $table->string('length_mm', 50);
            $table->string('taper', 50);
            $table->string('clasp_type', 50);
            $table->string('clasp_size', 50);
            $table->string('lock_system', 50);
            $table->float('price', 8,2);
            $table->text('description')->nullable();
            $table->text('additional_features')->nullable();
            $table->string('warranty_period', 150);
            $table->string('meta_title')->nullable();
            $table->string('meta_description',500)->nullable();
            $table->string('meta_keyword',400)->nullable();
            $table->string('h1')->nullable();
            $table->boolean('status', 1);
            $table->string('images')->nullable();
            $table->unsignedInteger('main_category_id')->nullable();
            $table->foreign('main_category_id')->references('id')->on('main_categories');
            $table->unsignedInteger('brand_id')->nullable();
            $table->foreign('brand_id')->references('id')->on('brands');
            $table->unsignedInteger('colour_id')->nullable();
            $table->foreign('colour_id')->references('id')->on('colours');
            $table->unsignedInteger('clock_type_id')->nullable();
            $table->foreign('clock_type_id')->references('id')->on('clock_types');
            $table->unsignedInteger('collection_id')->nullable();
            $table->foreign('collection_id')->references('id')->on('collections');
            $table->unsignedInteger('movement_id')->nullable();
            $table->foreign('movement_id')->references('id')->on('movements');
            $table->unsignedInteger('movement_type_id')->nullable();
            $table->foreign('movement_type_id')->references('id')->on('movement_types');
            $table->unsignedInteger('case_size_id')->nullable();
            $table->foreign('case_size_id')->references('id')->on('case_sizes');
            $table->unsignedInteger('case_shape_id')->nullable();
            $table->foreign('case_shape_id')->references('id')->on('case_shapes');
            $table->unsignedInteger('case_material_id')->nullable();
            $table->foreign('case_material_id')->references('id')->on('case_materials');
            $table->unsignedInteger('glass_material_id')->nullable();
            $table->foreign('glass_material_id')->references('id')->on('glass_materials');
            $table->unsignedInteger('dial_colour_id')->nullable();
            $table->foreign('dial_colour_id')->references('id')->on('dial_colours');
            $table->unsignedInteger('strap_material_id')->nullable();
            $table->foreign('strap_material_id')->references('id')->on('strap_materials');
            $table->unsignedInteger('strap_colour_id')->nullable();
            $table->foreign('strap_colour_id')->references('id')->on('strap_colours');
            $table->unsignedInteger('gender_id')->nullable();
            $table->foreign('gender_id')->references('id')->on('genders');
            $table->string('feature_id')->nullable();
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
        Schema::dropIfExists('product_details');
    }
}
