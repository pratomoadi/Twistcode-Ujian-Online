<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class DecimalToBinaryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $rules = [
            'decimal' => 'required|numeric'
        ];

        $messages = [
            'numeric' => 'Input harus berupa angka',
            'required' => 'Anda harus menginputkan sebuah angka'
        ];

        $validator = Validator::make($request->all(), $rules, $messages);
        if($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'errors' => $validator->errors()
            ], 400);
        }

        $binary = $this->decimalToBinary($request->decimal);

        return response()->json([
            'status' => 'success',
            'data' => $binary 
        ], 200);
    }

    private function decimalToBinary($decimal) {
        $number = $decimal;
        $binary = 0;
        $counter = 0;
        while($number>=1) {
            $binary = $binary + (($number%2)*pow(10, $counter));
            $counter++;
            $number = $number/2;
        }
        return $binary;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
