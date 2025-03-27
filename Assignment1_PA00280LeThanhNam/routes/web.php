<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Auth\ForgotPasswordController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\CategoryController;
// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/category/{id}', [PostController::class, 'category'])->name('post.category');
Route::get('/post/{id}', [PostController::class, 'detail'])->name('post.detail');
Route::get('/search', [PostController::class, 'search'])->name('search');

// Y2 - Auth user
Route::get('/register', [RegisterController::class, 'show'])->name('register.form');
Route::post('/register', [RegisterController::class, 'register']);
Route::get('/login', [LoginController::class, 'show'])->name('login.form');
Route::post('/login', [LoginController::class, 'login']);
Route::get('/logout', [LoginController::class, 'logout'])->name('logout');



// Bình luận (chỉ cho user đã login)
Route::middleware('auth')->post('/post/{id}/comment', [CommentController::class, 'store'])->name('comment.store');
Route::get('/activate/{token}', [RegisterController::class, 'activate'])->name('user.activate');

Route::get('/forgot-password', [ForgotPasswordController::class, 'showForgotForm'])->name('forgot.form');
Route::post('/forgot-password', [ForgotPasswordController::class, 'sendResetLink'])->name('forgot.send');
Route::get('/reset-password/{token}', [ForgotPasswordController::class, 'resetForm'])->name('reset.form');
Route::post('/reset-password', [ForgotPasswordController::class, 'resetPassword'])->name('reset.submit');





Route::get('/category/{id}', [PostController::class, 'show'])->name('category');


