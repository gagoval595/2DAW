<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('etapa', function (Blueprint $table) {
            $table->string('logo')->nullable()->after('image');
        });
    }

    public function down(): void
    {
        Schema::table('etapa', function (Blueprint $table) {
            $table->dropColumn('logo');
        });
    }
};