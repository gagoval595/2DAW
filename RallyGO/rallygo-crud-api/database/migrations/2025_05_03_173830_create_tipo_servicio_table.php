<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table('servicio', function (Blueprint $table) {
            $table->foreignId('tipo_servicio_id')->after('etapa_id')->constrained('tipo_servicio');
            $table->decimal('latitud', 10, 8)->after('ubicacion');
            $table->decimal('longitud', 11, 8)->after('latitud');
            $table->dropColumn('creado_en');
        });
    }
    
    public function down()
    {
        Schema::table('servicio', function (Blueprint $table) {
            $table->timestamp('creado_en')->nullable();
            $table->dropForeign(['tipo_servicio_id']);
            $table->dropColumn('tipo_servicio_id');
            $table->dropColumn(['latitud', 'longitud']);
        });
    }
};    
