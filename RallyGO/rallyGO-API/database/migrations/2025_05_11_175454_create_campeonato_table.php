<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('campeonato', function (Blueprint $table) {
            $table->id();
            $table->enum('tipo', ['WRC', 'S-CER']);
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('campeonato');
    }
};
