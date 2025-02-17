<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Personel;
use App\Http\Resources\ResponsResource;
use DB;
use App\Models\Agama;
use App\Models\Kesatuan;
use Illuminate\Support\Facades\Validator;

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
        // -> select('personel.nama', 'personel.nrp', 'personel.alamat', 'agama', 'kesatuan')
        -> select('personel.*', 'kesatuan.kesatuan', 'agama.agama')
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
        $validator = Validator::make($request->all(), [
            'nama' => 'required|min:3',
            'nrp' => 'required',
            'agama_id' => 'required|numeric',
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        $personel = Personel::create([
            'nama' => $request->nama,
            'nrp'=> $request->nrp,
            'alamat'=> $request->alamat,
            'agama_id'=> $request->agama_id,
            'kesatuan_id'=> $request->kesatuan_id,
        ]);
        return new ResponsResource(true, 'Berhasil Menambahkan Personel', $personel);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
        $personel = Personel::join('agama', 'agama.id', '=','personel.agama_id')
        -> join('kesatuan', 'kesatuan.id', '=','personel.kesatuan_id')
        -> select('personel.nama', 'personel.nrp', 'personel.alamat', 'agama', 'kesatuan')
        -> where('personel.id', '=', $id)
        -> get();

        return new ResponsResource(true, 'Detail Personel', $personel);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
        $agama = Agama::all();
        $kesatuan = Kesatuan::all(); 
        $personel = Personel::join('agama', 'agama.id', '=','personel.agama_id')
        -> join('kesatuan', 'kesatuan.id', '=','personel.kesatuan_id')
        -> select('personel.nama', 'personel.nrp', 'personel.alamat', 'agama', 'kesatuan')
        -> where('personel.id', '=', $id)
        -> get();

        return new ResponsResource(true, 'Detail Personel', $personel, $agama, $kesatuan);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
        $validator = Validator::make($request->all(), [
            'nama' => 'required|min:3',
            'agama_id' => 'required|numeric',
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        $personel = Personel::whereid($id)->update([
            'nama' => $request->nama,
            'nrp'=> $request->nrp,
            'alamat'=> $request->alamat,
            'agama_id'=> $request->agama_id,
            'kesatuan_id'=> $request->kesatuan_id,
        ]);
        return new ResponsResource(true, 'Data Personel Berhasil Diupdate', $personel);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
        $personel = Personel::whereid($id)->first();
        $personel->delete();
        return new ResponsResource(true, 'Data Personel Berhasil Dihapus', $personel);
    }
}
