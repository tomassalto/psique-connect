<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('psicologo_patologia', function (Blueprint $table) {
            $table->id();
            $table->integer('matricula_psicologo');
            $table->unsignedBigInteger('id_patologia');
            $table->timestamps();

            $table->foreign('matricula_psicologo')
                ->references('matricula')
                ->on('psicologo')
                ->onDelete('cascade');
            $table->foreign('id_patologia')
                ->references('id_patologia')
                ->on('patologia')
                ->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('psicologo_patologia');
    }
};
