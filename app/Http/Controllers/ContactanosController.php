<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactosMailable;

class ContactanosController extends Controller
{
    public function index()
    {

        return view('contactanos.index');

    }
    public function store(Request $request)
    {

        $request->validate([
            'name' => 'required',
            'correo' => 'required|email',
            'mensaje' => 'required',
        ]);

        $correo = new ContactosMailable($request->all());
        Mail::to('gedacaba@gmail.com')->send($correo);

        return redirect()->route('contactanos.index')->with('info', 'Mensaje enviado');

    }
}
