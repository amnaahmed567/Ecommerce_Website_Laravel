<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;



class Order extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'admin_id',
        'full_name',
        'city',
        'address',
        'postcode',
        'phone',
        'email',
        'order_notes',
    ];

    // Define the relationship to the User (user_id)
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // Define the relationship to the Admin (admin_id)
    public function admin()
    {
        return $this->belongsTo(User::class, 'admin_id');
    }
}
