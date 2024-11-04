<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB; // identik dengan querry builder
use App\Models\Staff;

class StaffSeader extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // isi data seeder
        Staff::factory(15)->create(); 
    }
}
