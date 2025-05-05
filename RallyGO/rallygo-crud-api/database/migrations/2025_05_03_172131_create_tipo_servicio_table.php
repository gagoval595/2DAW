<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTipoServicioTable extends Migration
{
    public function up()
    {
        Schema::create('tipo_servicio', function (Blueprint $table) {
            $table->id();
            $table->string('nombre', 50);
            $table->text('descripcion')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('tipo_servicio');
    }
}
