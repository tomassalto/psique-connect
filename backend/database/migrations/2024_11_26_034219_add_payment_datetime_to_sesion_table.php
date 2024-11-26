<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('sesion', function (Blueprint $table) {
            $table->dateTime('fecha_pago')->nullable();
        });
    }

    public function down(): void
    {
        Schema::table('sesion', function (Blueprint $table) {
            $table->dropColumn('fecha_pago');
        });
    }
};
