<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TinController extends Controller
{
    public function trangChu() {
        return view('index');
    }

    public function lienHe() {
        return view('lienhe');
    }

    public function chiTiet($id) {
        return "Chi tiết tin số: " . $id;
    }    
    

}
