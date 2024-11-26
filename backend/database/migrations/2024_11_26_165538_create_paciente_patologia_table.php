<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('paciente_patologia', function (Blueprint $table) {
            $table->id();
            $table->integer('dni_paciente');
            $table->unsignedBigInteger('id_patologia');

            $table->foreign('dni_paciente')
                ->references('dni')
                ->on('paciente')
                ->onDelete('cascade');

            $table->foreign('id_patologia')
                ->references('id_patologia')
                ->on('patologia')
                ->onDelete('cascade');
        });

        // Modificar la tabla preferencias para quitar la columna id_patologia
        Schema::table('preferencias', function (Blueprint $table) {
            $table->dropForeign(['id_patologia']);
            $table->dropColumn('id_patologia');
        });
    }

    public function down()
    {
        Schema::dropIfExists('paciente_patologia');

        Schema::table('preferencias', function (Blueprint $table) {
            $table->unsignedBigInteger('id_patologia')->nullable();
            $table->foreign('id_patologia')
                ->references('id_patologia')
                ->on('patologia')
                ->onDelete('cascade');
        });
    }
};
