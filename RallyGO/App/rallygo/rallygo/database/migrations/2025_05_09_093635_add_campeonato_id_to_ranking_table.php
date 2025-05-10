<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        // Verificar si la columna ya existe
        if (!Schema::hasColumn('ranking', 'campeonato_id')) {
            Schema::table('ranking', function (Blueprint $table) {
                $table->unsignedBigInteger('campeonato_id')->after('equipo')->nullable();
            });
        }

        // La siguiente parte solo para la clave foránea
        // Solo si la columna existe pero no la clave foránea
        if (!$this->hasForeignKey('ranking', 'ranking_campeonato_id_foreign')) {
            try {
                Schema::table('ranking', function (Blueprint $table) {
                    $table->foreign('campeonato_id')
                          ->references('id')
                          ->on('campeonatos')
                          ->onDelete('cascade');
                });
            } catch (\Exception $e) {
                echo "No se pudo crear la clave foránea: " . $e->getMessage() . "\n";
            }
        }
    }

    private function hasForeignKey($table, $key)
    {
        $conn = Schema::getConnection();
        $dbSchemaManager = $conn->getDoctrineSchemaManager();
        $doctrineTable = $dbSchemaManager->listTableDetails($table);
        return $doctrineTable->hasForeignKey($key);
    }

    public function down()
    {
        Schema::table('ranking', function (Blueprint $table) {
            // Primero intentar eliminar la clave foránea si existe
            if ($this->hasForeignKey('ranking', 'ranking_campeonato_id_foreign')) {
                $table->dropForeign(['campeonato_id']);
            }

            if (Schema::hasColumn('ranking', 'campeonato_id')) {
                $table->dropColumn('campeonato_id');
            }
        });
    }
};
