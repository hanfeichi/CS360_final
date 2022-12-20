<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Goods extends Model
{
    use HasFactory;

    protected $table = 'goods';

    protected $fillable = [
        'goods_name',
        'goods_image',
        'goods_category',
        'price',
        'rating',
        'supplier_uid',
    ];

    public function sku()
    {
        return $this->hasMany(GoodsSpecSku::class,'goods_id','id')->with('spec');
    }
}
