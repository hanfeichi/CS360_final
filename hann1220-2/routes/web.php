<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\Auth\ForgotPasswordController;
use App\Http\Controllers\HomeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', [AuthController::class, 'index'])->name('login');

Route::get('login', [AuthController::class, 'index'])->name('login');
Route::post('post-login', [AuthController::class, 'postLogin'])->name('login.post'); 
Route::get('registration', [AuthController::class, 'registration'])->name('register');
Route::post('post-registration', [AuthController::class, 'postRegistration'])->name('register.post'); 
Route::get('dashboard', [AuthController::class, 'dashboard']); 
Route::get('logout', [AuthController::class, 'logout'])->name('logout');
Route::get('delete/{id}', [AuthController::class, 'delete'])->name('delete');


Route::get('forget-password', [ForgotPasswordController::class, 'showForgetPasswordForm'])->name('forget.password.get');
Route::post('forget-password', [ForgotPasswordController::class, 'submitForgetPasswordForm'])->name('forget.password.post'); 
Route::get('reset-password/{token}', [ForgotPasswordController::class, 'showResetPasswordForm'])->name('reset.password.get');
Route::post('reset-password', [ForgotPasswordController::class, 'submitResetPasswordForm'])->name('reset.password.post');

// Route::get('home',function(){
// 	return view('home');
// });

Route::get('home', [HomeController::class, 'home'])->name('home');
Route::get('details/{goods_id}', [HomeController::class, 'details']);
Route::post('buy', [HomeController::class, 'buy']);
Route::get('order', [HomeController::class, 'order'])->name('order');
Route::get('orderdelete/{id}', [HomeController::class, 'orderDelete']);
Route::get('orderset/{set}/{orderid}', [HomeController::class, 'orderset'])->name('orderset');




Route::get('shop', [HomeController::class, 'shop'])->name('shop');
Route::get('edit/{id}', [HomeController::class, 'edit'])->name('edit');
Route::post('addsku', [HomeController::class, 'addsku'])->name('addsku');
Route::post('update', [HomeController::class, 'update'])->name('update');
Route::get('upload', [HomeController::class, 'upload'])->name('upload');
Route::post('uploadPost', [HomeController::class, 'uploadPost'])->name('upload.post');
Route::get('set', function(){return view('set');})->name('set');
Route::post('setting', [HomeController::class, 'setting'])->name('setting');

