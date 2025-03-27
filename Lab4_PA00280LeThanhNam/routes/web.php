<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TinController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/tin', [TinController::class, 'getAllTin'])->name('tin.danhsach');
Route::get('/tin/noibat', [TinController::class, 'getTinNoiBat'])->name('tin.noibat');
Route::get('/tin/chitiet/{id}', [TinController::class, 'getTinTheoId'])->name('tin.chitiet');
Route::get('/tin/loai/{loai}', [TinController::class, 'getTinTheoLoai'])->name('tin.loai');

