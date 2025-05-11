<?php

namespace App\Http\Controllers;

use App\Models\Foto;
use App\Models\Servicio;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class FotoController extends Controller
{
    public function index($servicioId)
    {
        $servicio = Servicio::find($servicioId);

        if (!$servicio) {
            return response()->json(['message' => 'Servicio no encontrado'], 404);
        }

        $fotos = Foto::where('servicio_id', $servicioId)->get();
        return response()->json($fotos);
    }

    public function store(Request $request, $servicioId)
    {
        $validator = Validator::make($request->all(), [
            'url' => 'required|string|max:255',
            'descripcion' => 'nullable|string|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $foto = new Foto();
        $foto->servicio_id = $servicioId;
        $foto->url = $request->url;
        $foto->descripcion = $request->descripcion;
        $foto->save();

        return response()->json($foto, 201);
    }

    public function destroy($id)
    {
        $foto = Foto::find($id);

        if (!$foto) {
            return response()->json(['message' => 'Foto no encontrada'], 404);
        }

        $foto->delete();
        return response()->json(['message' => 'Foto eliminada con éxito'], 200);
    }
}
