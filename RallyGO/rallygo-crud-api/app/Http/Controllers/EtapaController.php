<?php

namespace App\Http\Controllers;

use App\Models\Etapa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class EtapaController extends Controller
{
    public function index()
    {
        return response()->json(Etapa::all(), 200);
    }

    public function store(Request $request)
    {
        $request->validate([
            'campeonato_id' => 'required|exists:campeonato,id',
            'nombre'        => 'required|string|max:100',
            'fecha'         => 'nullable|date',
        ]);

        $e = Etapa::create($request->only('campeonato_id','nombre','fecha'));

        return response()->json($e, 201);
    }

    public function show($id)
    {
        $e = Etapa::find($id);
        if (!$e) {
            return response()->json(['message'=>'Etapa no encontrada'], 404);
        }
        return response()->json($e, 200);
    }

    public function update(Request $request, $id)
    {
        $e = Etapa::find($id);
        if (!$e) {
            return response()->json(['message'=>'Etapa no encontrada'], 404);
        }

        $request->validate([
            'campeonato_id' => 'required|exists:campeonato,id',
            'nombre'        => 'required|string|max:100',
            'fecha'         => 'nullable|date',
        ]);

        $e->update($request->only('campeonato_id','nombre','fecha'));
        return response()->json($e, 200);
    }

    // Actualització parcial
    public function parte(Request $request, $id)
    {
        $e = Etapa::find($id);
        if (!$e) {
            return response()->json(['message'=>'Etapa no encontrada'], 404);
        }

        $validator = Validator::make($request->all(), [
            'campeonato_id' => 'nullable|exists:campeonato,id',
            'nombre'        => 'nullable|string|max:100',
            'fecha'         => 'nullable|date',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors'=>$validator->errors()], 400);
        }

        if ($request->has('campeonato_id')) {
            $e->campeonato_id = $request->campeonato_id;
        }
        if ($request->has('nombre')) {
            $e->nombre = $request->nombre;
        }
        if ($request->has('fecha')) {
            $e->fecha = $request->fecha;
        }

        $e->save();
        return response()->json($e, 200);
    }

    public function destroy($id)
    {
        $e = Etapa::find($id);
        if (!$e) {
            return response()->json(['message'=>'Etapa no encontrada'], 404);
        }
        $e->delete();
        return response()->json(null, 204);
    }
}
