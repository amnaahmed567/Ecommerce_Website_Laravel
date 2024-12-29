<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AdminDashboard extends Model
{
    use HasFactory;

    protected $fillable = ['user_id', 'config'];

    /**
     * Relationship to the User model
     */
    public function user()
    {
        return $this->belongsTo(User::class,'dashboard_id');
}
}