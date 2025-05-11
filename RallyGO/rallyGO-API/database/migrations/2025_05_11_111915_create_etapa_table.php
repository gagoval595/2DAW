<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('etapa', function (Blueprint $table) {
            $table->id();
            $table->foreignId('campeonato_id')->constrained('campeonato')->onDelete('cascade');
            $table->string('nombre',100);
            $table->date('fecha')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('etapa');
    }
};
