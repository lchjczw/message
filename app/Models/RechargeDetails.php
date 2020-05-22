<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RechargeDetails extends Model
{
    //
    protected $fillable = [
        'admin_user_id',
        'user_id',
        'amount'
    ];
}
