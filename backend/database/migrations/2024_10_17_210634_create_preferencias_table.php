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
        Schema::create('preferencias', function (Blueprint $table) {
            $table->id();
            $table->integer('dni_paciente');
            $table->unsignedBigInteger('id_tematica')->nullable();
            $table->unsignedBigInteger('id_patologia')->nullable();
            $table->unsignedBigInteger('id_corriente')->nullable();

            $table->foreign('dni_paciente')->references('dni')->on('paciente')->onDelete('cascade');
            $table->foreign('id_tematica')->references('id_tematica')->on('tematica')->onDelete('cascade');
            $table->foreign('id_patologia')->references('id_patologia')->on('patologia')->onDelete('cascade');
            $table->foreign('id_corriente')->references('id_corriente')->on('corriente')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('preferencias');
    }
};
