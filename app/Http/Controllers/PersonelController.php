<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Personel;
use App\Http\Resources\PersonelResource;
use App\Http\Resources\ResponsResource;
use DB;
use GuzzleHttp\Psr7\Response;

class PersonelController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        // $personel = DB::table('personel')->get();
        $personel = Personel::join('agama', 'agama.id', '=','personel.agama_id')
        -> join('kesatuan', 'kesatuan.id', '=','personel.kesatuan_id')
        -> select('personel.nama', 'personel.nrp', 'personel.alamat', 'agama', 'kesatuan')
        -> get();

        return new ResponsResource(true, 'Data Personel', $personel);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
