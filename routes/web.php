<?php


use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CursoController;
use App\Http\Controllers\ContactanosController;


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
Route::get('/', [CursoController::class, 'index'])->name('home');

//rutas de la manera convencional
/* Route::get('cursos', [CursoController::class, 'index'])->name('cursos.index');
Route::get('cursos/create', [CursoController::class, 'create'])->name('cursos.create');
Route::post('cursos',  [CursoController::class, 'store'])->name('cursos.store');
Route::get('cursos/{curso}', [CursoController::class, 'show'])->name('cursos.show');
Route::get('cursos/{curso}/edit', [CursoController::class, 'edit'])->name('cursos.edit');
Route::put('cursos/{curso}',  [CursoController::class, 'update'])->name('cursos.update');
Route::delete('cursos/{curso}',  [CursoController::class, 'destroy'])->name('cursos.destroy'); */


//rutas de tipo resourses
Route::resource('cursos', CursoController::class);

//ruta para cuando solo queremos mostrar una ruta estatica
Route::view('nosotros', 'nosotros')->name('nosotros');

Route::get('contactanos', [ContactanosController::class, 'index'])->name('contactanos.index');
Route::post('contactanos', [ContactanosController::class, 'store'])->name('contactanos.store');

//para usuarios
Route::get('usuarios', [UserController::class, 'index'])->name('user.index');



