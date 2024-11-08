<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Staff;

class StaffController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $staff = Staff::all(); //syntax pakai eloquent
        return view('staff.index', compact('staff'));
        //compact salah satu library yang membantu kita untuk mengimport variabel ke view
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

    // mengirim data kedalam routing dan diakses api get untuk dilihat datanya secara json    
    public function apiStaff() {
        $staff = Staff::all();
        return response()->json(
            [
                'success' => true,
                'massage' => 'Melihat data staff',
                'data' => $staff
            ], 
        200);
    }

    public function apiStaffDetail($id) {
        $staff = Staff::find($id);
        if ($staff) {
            return response()->json(
                [
                    'success' => true,
                    'massage' => 'Detail Staff per ID',
                    'data' => $staff
                ], 200  
            );
        } else {
            return response()->json(
                [
                    'success' => false,
                    'massage' => 'Staff tidak ada',
                ], 404  
            );
        }
    }
}
