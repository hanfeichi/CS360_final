<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GoodsSpecSku extends Model
{
    use HasFactory;

    protected $table = 'goods_spec_sku';
    
    public $timestamps= false;

    protected $fillable = [
        'spec_id',
        'goods_id',
        'sku_name',
    ];

    public function spec()
    {
        return $this->hasOne(GoodsSpec::class,'id','spec_id');
    }
}
