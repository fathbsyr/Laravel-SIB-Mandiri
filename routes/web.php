<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\NilaiController;
use App\Http\Controllers\StaffController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/salam', function () {
    return "<h1>selamat belajar laravel</h1>";
    //routing dengan mengembalikan nilai ke diri sendiri
});

Route::get('/staff/{nama}/{divisi}', function ($nama, $divisi) {
    return 'Nama Staff : ' .$nama. '<br> Departement : ' .$divisi; 
}); //rouing memanggil paramerer

Route::get('/kabar', function () {
    return view('kondisi');
});// routing url yang ngarah ke tampilan file kodisi di direktori views

Route::get('/nilai', function () {
    return view('nilai');
});

Route::get('/nilai', [NilaiController::class, 'index']);

Route::get('/daftar_nilai', function () {
    return view('daftar_nilai');
});

Route::resource('staff', StaffController::class); // route resource otomatis kepanggil semua.