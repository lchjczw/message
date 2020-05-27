<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Configs extends Model
{
    //

    protected $fillable = [
        'name',
        'value',
        'code'
    ];


    public static function getCodeValue($key)
    {
        return self::where('code', $key)->get()->value;
    }

    /**
     * 更新信息
     * @param $key
     * @param $value
     */
    public static function updateValueByKey($key, $value)
    {
        return self::where('code', $key)->update([
            'value' => $value
        ]);
    }
}
