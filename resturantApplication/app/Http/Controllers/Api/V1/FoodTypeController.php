<?php

namespace App\Http\Controllers\Api\V1;

use App\Models\FoodType;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class FoodTypeController extends Controller
{
    /**
     * Title for current resource.
     *
     * @var string
    */
    protected $title = 'Food Type';

    public function index()
    {
        return FoodType::all();
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return FoodType::find($id);
    }

        /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)

    {
        $request->merge(['order' => 1]);
        $request->merge(['parent_id' => 1]);
        

        $request->validate([
            'title' => 'required',
            'parent_id' => 'required',
            'description' => 'required',
            'order' => 'required',
        ]);

        return FoodType::create($request->all());
    }
}
