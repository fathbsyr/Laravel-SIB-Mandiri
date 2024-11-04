<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    //
    use HasFactory;
    protected $table = 'staff'; //deklarasi table
    protected $fillable = ['nip', 'name', 'alamat', 'email']; //deklarasi column
    public $timestamps = false;
}
