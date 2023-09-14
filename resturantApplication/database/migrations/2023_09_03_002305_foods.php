<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('foods', function (Blueprint $table) {
            $table->id(); // This sets 'id' as an auto-increment primary key
            $table->string('name');
            $table->text('description');
            $table->decimal('price', 10, 2);
            $table->integer('stars');
            $table->integer('people');
            $table->integer('selected_people');
            $table->string('img');
            $table->string('location');
            $table->timestamps();
            $table->integer('type_id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('foods');
    }
};
