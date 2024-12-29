<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
$table->foreignId('user_id')->nullable()->constrained();
$table->string('code')->nullable()->unique();
$table->string('status')->nullable();
$table->datetime('order_date')->nullable();
$table->datetime('payment_due')->nullable();
$table->string('payment_status')->nullable();
$table->string('payment_token')->nullable();
$table->string('payment_url')->nullable();
$table->decimal('base_total_price', 16, 2)->nullable()->default(0);
$table->decimal('tax_amount', 16, 2)->nullable()->default(0);
$table->decimal('tax_percent', 16, 2)->nullable()->default(0);
$table->decimal('discount_amount', 16, 2)->nullable()->default(0);
$table->decimal('discount_percent', 16, 2)->nullable()->default(0);
$table->decimal('shipping_cost', 16, 2)->nullable()->default(0);
$table->decimal('grand_total', 16, 2)->nullable()->default(0);
$table->text('notes')->nullable();
$table->string('customer_first_name')->nullable();
$table->string('customer_address')->nullable();
$table->string('customer_address2')->nullable();
$table->string('customer_phone')->nullable();
$table->string('customer_email')->nullable();
$table->string('customer_city_id')->nullable();
$table->string('customer_province_id')->nullable();
$table->integer('customer_postcode')->nullable();
$table->string('shipping_courier')->nullable();
$table->string('shipping_service_name')->nullable();
$table->foreignId('approved_by')->nullable()->constrained('users');
$table->datetime('approved_at')->nullable();
$table->foreignId('cancelled_by')->nullable()->constrained('users');
$table->datetime('cancelled_at')->nullable();
$table->text('cancellation_note')->nullable();

$table->index('payment_token');
$table->index('code');
$table->index(['code', 'order_date']);
$table->timestamps();
$table->softDeletes();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
};
