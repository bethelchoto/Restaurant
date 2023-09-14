<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FoodType extends Model
{
    use HasFactory;

    //table name
    protected $table = 'food_types';

    public function getList(){
        return $this->get();
    }

    protected $fillable = [
        'title',
        'description',
        'order',
        'parent_id'
    ];
}

