<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('preferencias_patologias', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_preferencia');
            $table->unsignedBigInteger('id_patologia');
            $table->timestamps();

            $table->foreign('id_preferencia')->references('id')->on('preferencias')->onDelete('cascade');
            $table->foreign('id_patologia')->references('id_patologia')->on('patologia')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('preferencias_patologias');
    }
};
