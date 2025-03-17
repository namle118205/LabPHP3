<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TinController extends Controller
{
    // Lấy tất cả tin
    public function getAllTin()
    {
        $tins = DB::table('tins')->get();
        return view('danhsach', ['tins' => $tins]);
    }

    // Lấy tin nổi bật (số lượt xem > 300)
    public function getTinNoiBat()
    {
        $tins = DB::table('tins')
                    ->where('SoXem', '>', 300)
                    ->orderBy('SoXem', 'desc')
                    ->get();
        return view('noibat', ['tins' => $tins]);
    }

    // Lấy chi tiết tin theo id
    public function getTinTheoId($id)
    {
        $tin = DB::table('tins')->where('id', $id)->first();
        return view('chitiet', ['tin' => $tin]);
    }

    public function getTinTheoLoai($loai)
    {
        $tins = DB::table('tins')->where('idLoaiTin', $loai)->get();
        return view('tinloai', ['tins' => $tins, 'loai' => $loai]);
    }
}
