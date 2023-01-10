<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    use HasFactory;

    protected $fillable = [
        'token',
        'amount',
        'status',
        'message',
        'user_id',
        'ref_num',
        'card_number',
        'verified_at'
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
        'message' => 'array'
    ];
}
