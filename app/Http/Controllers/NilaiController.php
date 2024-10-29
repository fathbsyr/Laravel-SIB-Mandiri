<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NilaiController extends Controller
{
    //
    public function index()
    {
        $mhs1 = 'Joko'; $asal = 'Surabaya';
        //mengarahkan ke file nilai
        //compact = mengirimkan variabel ke view
        //compact bisa di tulis [$mhs => 'mhs'] 
        return view('nilai', compact('mhs1', 'asal'));
    }
}
