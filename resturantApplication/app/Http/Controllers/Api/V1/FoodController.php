<?php

namespace App\Http\Controllers\Api\V1;

use App\Models\Food;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\FoodStoreRequest;
use Illuminate\Support\Facades\Storage;

class FoodController extends Controller
{

    /**
     * Title for current resource.
     *
     * @var string
    */
    protected $title = 'Foods';

    public function index()
    {
        return Food::all();
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return Food::find($id);
    }

        public function store(FoodStoreRequest $request)
    {
        try {
            $imageName = Str::random(32) . "." . $request->img->getClientOriginalExtension();
            $imagePath = 'images/' . $imageName; // Path to store the image

            // Store the image in the filesystem
            Storage::disk('public')->put($imagePath, file_get_contents($request->img));

            Food::create([
                'name' => $request->name,
                'img' => $imagePath, // Save the image path in the database
                'description' => $request->description,
                'type_id' => $request->input('type_id'),
                'price' => $request->price,
                'location' => $request->location,
                'stars' => $request->stars,
                'people' => $request->people,
                'selected_people' => $request->selected_people,
            ]);

            return response()->json([
                'message' => "Food successfully created."
            ], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => "Something went really wrong!"], 500);
        }
    }


    // public function store(FoodStoreRequest $request)
    // {
    //     try{
    //         $imageName = Str::random(32).".".$request->img->getClientOriginalExtension();
    //         Food::create([
    //             'name' => $request->name,
    //             'img' => $imageName,
    //             'description' => $request->description,
    //             'type_id' => $request->input('type_id'),
    //             'price' => $request->price,
    //             'location' => $request->location,
    //             'stars'  => $request->stars,
    //             'people' => $request->people,
    //             'selected_people'=>$request->selected_people,
    //             'img' => $request->img,
    //             'description' => $request->description,

    //         ]);
    //         Storage::disk('public')->put($imageName, file_get_contents($request->img));

    //         return response()->json([
    //             'message' => "Food successfully created."
    //         ], 200);
    //     }catch (\Exception $e) {
    //         return response()->json(['message' => "Something went really wrong!"], 500);
    //     }
    // }

}
