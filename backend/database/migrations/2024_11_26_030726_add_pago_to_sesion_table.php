<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('sesion', function (Blueprint $table) {
            $table->boolean('pago')->default(false);
            $table->string('payment_id')->nullable();
            $table->string('comprobante_path')->nullable();
        });
    }

    public function down(): void
    {
        Schema::table('sesion', function (Blueprint $table) {
            $table->dropColumn(['pago', 'payment_id', 'comprobante_path']);
        });
    }
};
