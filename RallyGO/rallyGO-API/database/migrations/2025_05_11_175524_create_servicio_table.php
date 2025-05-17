<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('servicio', function (Blueprint $table) {
            $table->id();
            $table->foreignId('etapa_id')->constrained('etapa')->onDelete('cascade');
            $table->foreignId('tipo_servicio_id')->constrained('tipo_servicio')->onDelete('cascade');
            $table->string('ubicacion')->nullable();
             $table->decimal('latitud', 10, 8);
            $table->decimal('longitud', 11, 8);
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('servicio');
    }
};
