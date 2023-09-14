<?php

namespace App\Models;

use App\Models\FoodType;
use Illuminate\Database\Eloquent\Model;
use App\Http\Controllers\Api\V1\ProductController;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Food extends Model
{
    use HasFactory;

    //table name
    protected $table = 'foods';

    public function FoodType(){
        return $this->hasOne(FoodType::class, 'id', 'type_id');
    }

    public function getRecommended(){
        return $this->where(['is_recommend'=>1])->orderBy('id', 'DESC')->limit(3)->get();
    }
    public function getPopularFood(){
        return $this->where(['type_id'=>2])->orderBy('id', 'DESC')->limit(3)->get();
    }
    public function getUnRecommended(){
        return $this->where(['is_recommend'=>0])->orderBy('id', 'DESC')->limit(3)->get();
    }

    public function getRecent(){
        return $this->limit(5)->orderBy('id', 'DESC')->get();
    }

    protected $fillable = [
        'name',
        'description',
        'price',
        'stars',
        'people',
        'selected_people',
        'img',
        'location',
        'type_id',
    ];
    
}
