<?php

namespace App\Http\Controllers;

use App\Models\Test;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Requests\StoreTestRequest;
use Illuminate\Support\Facades\Storage;
// use App\Http\Requests\UpdateTestRequest;

class TestController extends Controller
{

    public function store(StoreTestRequest $request)
    {
        try{
            $imageName = Str::random(32).".".$request->image->getClientOriginalExtension();
            Test::create([
                'name' => $request->name,
                'image' => $imageName,
                'description' => $request->description
            ]);
            Storage::disk('public')->put($imageName, file_get_contents($request->image));

            return response()->json([
                'message' => "Post successfully created."
            ], 200);
        }catch (\Exception $e) {
            return response()->json(['message' => "Something went really wrong!"], 500);
        }
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }


    /**
     * Display the specified resource.
     */
    public function show(Test $test)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Test $test)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateTestRequest $request, Test $test)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Test $test)
    {
        //
    }
}
