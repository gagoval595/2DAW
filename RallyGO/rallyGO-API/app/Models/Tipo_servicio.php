<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Tipo_servicio extends Migration
{
    public function up()
    {
        Schema::create('tipo_servicio', function (Blueprint $table) {
            $table->id();
            $table->enum('tipo', ['Hotel', 'Parquing', 'Camping']);
            $table->string('nombre');
            $table->string('descripcion');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('tipo_servicio');
    }
}