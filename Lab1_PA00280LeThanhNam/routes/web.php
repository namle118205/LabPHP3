<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TinController;

// Route::get('/', function () {
//     return view('welcome');
// });


// Route::get('/lien-he', function () {
//     return "Trang liên hệ";
// });

Route::get('/', [TinController::class, 'trangChu']);
Route::get('/lien-he', [TinController::class, 'lienHe']);
Route::get('/ct/{id}', [TinController::class, 'chiTiet']);

