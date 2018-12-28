<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddCatIconToProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('product_category', function (Blueprint $table) {
            $table->string('cat_icon')->after('category');
        });
    }
    
    public function down()
    {
        Schema::table('product_category', function (Blueprint $table) {
            $table->dropColumn('cat_icon');
        });
    }
}
