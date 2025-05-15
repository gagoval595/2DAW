<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('tipo_servicio', function (Blueprint $table) {
            $table->string('foto')->nullable()->after('descripcion');
            $table->string('icono')->nullable()->after('foto');
        });
    }

    public function down(): void
    {
        Schema::table('tipo_servicio', function (Blueprint $table) {
            $table->dropColumn(['foto', 'icono']);
        });
    }
};