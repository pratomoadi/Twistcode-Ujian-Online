<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BinerToDecimalController extends Controller
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
            'biner' => 'required|numeric'
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

        $decimal = $this->binerToDecimal($request->biner);

        return response()->json([
            'status' => 'error',
            'data' => $decimal 
        ], 200);
    }

    private function binerToDecimal($biner) {
        $number = $biner;
        $counter = 0;
        $decimal = 0;
        while($number!=0) {
            $decimal = $decimal + pow(2*$number%10, $counter);
            $counter++;
            $number = $number/10;
        }

        return $decimal;
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
