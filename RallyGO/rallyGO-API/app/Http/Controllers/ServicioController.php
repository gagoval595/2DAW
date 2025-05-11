<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Servicio;
use Illuminate\Support\Facades\Validator;

class ServicioController extends Controller
{
    public function index()
    {
        $servicios = Servicio::all();
        return response()->json($servicios);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'etapa_id' => 'required|integer',
            'tipo_servicio_id' => 'required|integer',
            'ubicación' => 'required|string|max:255',
            'latitud' => 'required|numeric',
            'longitud' => 'required|numeric',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $servicio = new Servicio();
        $servicio->etapa_id = $request->etapa_id;
        $servicio->tipo_servicio_id = $request->tipo_servicio_id;
        $servicio->ubicación = $request->ubicación;
        $servicio->latitud = $request->latitud;
        $servicio->longitud = $request->longitud;
        $servicio->save();

        return response()->json($servicio, 201);
    }

    public function show(string $id)
    {
        $servicio = Servicio::find($id);

        if (!$servicio) {
            return response()->json(['message' => 'Servicio no encontrado'], 404);
        }

        return response()->json($servicio);
    }

    public function update(Request $request, string $id)
    {
        $validator = Validator::make($request->all(), [
            'etapa_id' => 'sometimes|required|integer',
            'tipo_servicio_id' => 'sometimes|required|integer',
            'ubicación' => 'sometimes|required|string|max:255',
            'latitud' => 'sometimes|required|numeric',
            'longitud' => 'sometimes|required|numeric',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $servicio = Servicio::find($id);

        if (!$servicio) {
            return response()->json(['message' => 'Servicio no encontrado'], 404);
        }

        $servicio->update($request->only(['etapa_id', 'tipo_servicio_id', 'ubicación', 'latitud', 'longitud']));

        return response()->json($servicio);
    }

    public function destroy(string $id)
    {
        $servicio = Servicio::find($id);

        if (!$servicio) {
            return response()->json(['message' => 'Servicio no encontrado'], 404);
        }

        $servicio->delete();

        return response()->json(['message' => 'Servicio eliminado con éxito']);
    }
}
