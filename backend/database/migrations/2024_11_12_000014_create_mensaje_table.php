<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMensajeTable extends Migration
{
    public function up(): void
    {
        Schema::create('mensaje', function (Blueprint $table) {
            $table->id('id_mensaje');
            $table->integer('dni_paciente');
            $table->integer('matricula_psicologo');
            $table->text('contenido');
            $table->boolean('leido')->default(false);
            $table->foreign('dni_paciente')->references('dni')->on('paciente')->onDelete('cascade');
            $table->foreign('matricula_psicologo')->references('matricula')->on('psicologo')->onDelete('cascade');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('mensaje');
    }
}
