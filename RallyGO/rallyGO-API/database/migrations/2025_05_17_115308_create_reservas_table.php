<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('reservas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('servicio_id')->constrained('servicio')->onDelete('cascade');
            $table->string('nombre_cliente');
            $table->string('email_cliente');
            $table->string('telefono');
            $table->date('fecha_inicio');
            $table->date('fecha_fin');
            $table->integer('numero_personas');
            $table->text('comentarios')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('reservas');
    }
};
