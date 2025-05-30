<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('tipo_servicio', function (Blueprint $table) {
            $table->id();
            $table->enum('tipo', ['Hotel', 'Parquing', 'Camping','Apartamento']);
            $table->string('nombre');
            $table->string('descripcion');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('tipo_servicio');
    }
};
