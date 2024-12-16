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
        Schema::create('preferencias_respuestas', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_preferencia');
            $table->string('key');
            $table->string('pregunta')->nullable();
            $table->text('respuesta')->nullable();
            $table->string('label')->nullable();
            $table->timestamps();

            $table->foreign('id_preferencia')->references('id')->on('preferencias')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('preferencias_respuestas');
    }
};
