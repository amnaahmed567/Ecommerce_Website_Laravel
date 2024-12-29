<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Checkout extends Model
{
    use HasFactory;

    // Specify the table name if it's not the plural of the model name
    protected $table = 'checkouts';

    // Fields that can be mass-assigned
    protected $fillable = [
        'user_id',
        'full_name',
        'city',
        'address',
        'postcode',
        'phone',
        'email',
        'order_notes',
    ];
}