<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('reserva', function (Blueprint $table) {
            $table->id();
            $table->foreignId('usuario_id')
                  ->constrained('usuario')
                  ->onDelete('cascade');
            $table->foreignId('servicio_id')
                  ->constrained('servicio')
                  ->onDelete('cascade');
            $table->foreignId('estado_reserva_id')
                  ->constrained('estado_reserva')
                  ->onDelete('cascade');
            $table->timestamp('fecha')->useCurrent();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('reserva');
    }
};
