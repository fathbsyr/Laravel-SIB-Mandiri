<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Agama;
use App\Http\Resources\ResponsResource;
use DB;

class AgamaController extends Controller
{
    //
    public function index() {
        $agama = DB::table('agama')->get();

        return new ResponsResource(true, 'Data Agama', $agama);
    }

    public function store(Request $request) {
        $agama = Agama::create([
            'agama' => $request->agama,
        ]);
        return new ResponsResource(true, 'Berhasil Menambahkan Agama', $agama);
    } 
}
