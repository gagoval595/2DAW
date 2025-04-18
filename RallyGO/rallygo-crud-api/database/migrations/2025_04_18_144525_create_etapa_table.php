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
            // camp relacional a campeonato.id
            $table->foreignId('campeonato_id')
                  ->constrained('campeonato')
                  ->onDelete('cascade');
            $table->string('nombre', 100);
            $table->date('fecha')->nullable();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('etapa');
    }
};
