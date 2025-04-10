<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HsController;
use App\Http\Controllers\SvController;
use App\Mail\GuiEmail;
use Illuminate\Support\Facades\Mail;

Route::get("/guimail", function () {
    Mail::send(new GuiEmail());
    return "Email đã được gửi thành công!";
});

Route::get("sv", [SvController::class, 'sv']);
Route::post("sv", [SvController::class, 'sv_store'])->name('sv_store');
Route::get("hs", [HsController::class, 'hs']);
Route::post("hs", [HsController::class, 'hs_store'])->name('hs_store');
Route::get('/', function () {
    return view('welcome');
});
