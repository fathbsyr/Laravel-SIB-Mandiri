<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AnimalController;
use App\Http\Controllers\StaffController;
use App\Http\Controllers\AgamaController;
use App\Http\Controllers\KesatuanController;
use App\Http\Controllers\PersonelController;
use App\Http\Controllers\TugasController;
use App\Http\Controllers\Api\AuthController;

// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');

Route::post("/register", [AuthController::class, "register"]);
Route::post("/login", [AuthController::class, "login"]);

// Rute untuk reset password
Route::post('/forgot-password', [AuthController::class, 'forgotPassword']);
Route::post('/reset-password', [AuthController::class, 'resetPassword']);
Route::get('/password/reset/{token}', [AuthController::class, 'showResetForm'])->name('password.reset');

Route::get('/animals', [AnimalController::class, 'index']);
Route::post('/animals', [AnimalController::class, 'store']);

Route::get('/staff', [StaffController::class, 'apiStaff']);
Route::get('/staff/{id}', [StaffController::class, 'apiStaffDetail']);


//personel
Route::middleware(['auth:sanctum', 'peran:admin-staff-personel'])->group(function() {
    //agama
    Route::get('/agama', [AgamaController::class, 'index']);
    Route::post('/agama/create', [AgamaController::class, 'store']);   
    
    //kesatuan
    Route::get('/kesatuan', [KesatuanController::class, 'index']);
    // Route::post('/personel/create', [PersonelController::class, 'store']);
    // Route::put('/personel/{id}', [PersonelController::class, 'update']);
    // Route::put('/personel/{id}', [PersonelController::class, 'update']);
    // Route::delete('/personel/{id}', [PersonelController::class, 'destroy']); 
    
    Route::get('/personel', [PersonelController::class, 'index']);
Route::get('/personel-edit/{id}', [PersonelController::class, 'show']);
Route::get('/personel-edit/{id}', [PersonelController::class, 'edit']);
Route::post('/personel/create', [PersonelController::class, 'store']);
Route::put('/personel/{id}', [PersonelController::class, 'update']);
Route::delete('/personel/{id}', [PersonelController::class, 'destroy']);

//tugas
Route::get('/tugas', [TugasController::class, 'index']);
Route::get('/tugas/{id}', [TugasController::class, 'show']); 
Route::post('/tugas/create', [TugasController::class, 'store']);

});