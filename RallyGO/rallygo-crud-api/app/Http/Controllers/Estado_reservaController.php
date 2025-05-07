<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

use App\Models\Estado_reserva;

class Estado_reservaController extends Controller
{
    public function index()
    {
        return response()->json(Estado_reserva::all(), 200);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nombre'      => 'required|string|max:50',
            'descripcion' => 'nullable|string',
        ]);

        $e = Estado_reserva::create($request->only('nombre','descripcion'));
        return response()->json($e, 201);
    }

    public function show($id)
    {
        $e = Estado_reserva::find($id);
        if (! $e) {
            return response()->json(['message'=>'Estado no encontrado'],404);
        }
        return response()->json($e,200);
    }

    public function update(Request $request, $id)
    {
        $e = Estado_reserva::find($id);
        if (! $e) {
            return response()->json(['message'=>'Estado no encontrado'],404);
        }

        $request->validate([
            'nombre'      => 'required|string|max:50',
            'descripcion' => 'nullable|string',
        ]);

        $e->update($request->only('nombre','descripcion'));
        return response()->json($e,200);
    }

    public function parte(Request $request, $id)
    {
        $e = Estado_reserva::find($id);
        if (! $e) {
            return response()->json(['message'=>'Estado no encontrado'],404);
        }

        $validator = validator($request->all(), [
            'nombre'      => 'nullable|string|max:50',
            'descripcion' => 'nullable|string',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors'=>$validator->errors()],400);
        }

        if ($request->has('nombre')) {
            $e->nombre = $request->nombre;
        }
        if ($request->has('descripcion')) {
            $e->descripcion = $request->descripcion;
        }
        $e->save();

        return response()->json($e,200);
    }

    public function destroy($id)
    {
        $e = Estado_reserva::find($id);
        if (! $e) {
            return response()->json(['message'=>'Estado no encontrado'],404);
        }
        $e->delete();
        return response()->json(null,204);
    }
}
