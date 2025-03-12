<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ThongTinController extends Controller
{
    public function thongTin() {
        return view('thongtin');
    }
}
