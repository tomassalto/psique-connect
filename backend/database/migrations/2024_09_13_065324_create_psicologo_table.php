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
        Schema::create('psicologo', function (Blueprint $table) {
            $table->integer('matricula')->primary();
            $table->string('nombre', 50);
            $table->string('apellido', 50);
            $table->string('telefono', 20);
            $table->decimal('promedio', 3, 2)->nullable();
            $table->bigInteger('codigo_postal');
            $table->string('genero');
            $table->date('fecha_nacimiento');
            $table->string('foto')->nullable();
            $table->decimal('precio', 8, 2)->nullable();
            $table->unsignedBigInteger('id_tematica');
            $table->unsignedBigInteger('id_corriente');
            $table->string('email')->unique();
            $table->string('password');

            $table->foreign('codigo_postal')->references('codigo_postal')->on('localidad')->onDelete('cascade');
            $table->foreign('id_tematica')->references('id_tematica')->on('tematica')->onDelete('cascade');
            $table->foreign('id_corriente')->references('id_corriente')->on('corriente')->onDelete('cascade');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('psicologo');
    }
};
