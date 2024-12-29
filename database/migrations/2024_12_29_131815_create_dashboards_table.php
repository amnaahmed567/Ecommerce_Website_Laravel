<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDashboardsTable extends Migration
{
    public function up()
    {
        Schema::create('admin_dashboards', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id'); // Admin ID
            $table->text('config')->nullable(); // Dashboard settings
            $table->timestamps();
            
            // Foreign key to users table
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('admin_dashboards');
}
}