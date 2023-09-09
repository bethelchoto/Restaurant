<?php

namespace App\Models;

use App\Models\Food;
use App\Models\Order;

use Illuminate\Database\Eloquent\Model;
use App\Http\Controllers\Api\V1\OrderController;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class OrderDetail extends Model
{
    use HasFactory;

    protected $casts = [
        'price' => 'float',
        'discount_on_food' => 'float',
        'total_add_on_price' => 'float',
        'tax_amount' => 'float',
        'food_id'=> 'integer',
        'order_id'=> 'integer',
        'quantity'=>'integer',
    ];

    protected $primaryKey   = 'id';

    public function order()
    {
        return $this->belongsTo(Order::class);
    }

    public function food()
    {
        return $this->belongsTo(Food::class,'food_id');
    }
}