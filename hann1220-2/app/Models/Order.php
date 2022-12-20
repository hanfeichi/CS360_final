<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $table = 'order';

    protected $fillable = [
        'uid',
        'goods_name',
        'goods_id',
        'content',
        'total_price',
        'phone',
        'address',
        'city',
        'state',
        'card',
        'card_name',
        'haggle',
        'damages',
        'damages_percent',
    ];
}
