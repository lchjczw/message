<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CodeReceivingRecord extends Model
{
    //

    protected $fillable = [
        'project_id',
        'thirty_id',
        'user_id',
        'phone',
        'country_id',
        'amount',
        'content',
        'status'
    ];
}
