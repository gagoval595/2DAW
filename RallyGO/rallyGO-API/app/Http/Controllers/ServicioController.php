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
            'etapa_id' => 'required|exists:etapa,id',
            'tipo_servicio_id' => 'required|exists:tipo_servicio,id',
            'ubicación' => 'required|string|max:255',
            'latitud' => 'required|numeric|between:-90,90',
            'longitud' => 'required|numeric|between:-180,180',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        try {
            $servicio = Servicio::create($request->all());
            return response()->json($servicio, 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Error al crear el servicio'], 500);
        }
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
            'etapa_id' => 'sometimes|required|exists:etapa,id',
            'tipo_servicio_id' => 'sometimes|required|exists:tipo_servicio,id',
            'ubicación' => 'sometimes|required|string|max:255',
            'latitud' => 'sometimes|required|numeric|between:-90,90',
            'longitud' => 'sometimes|required|numeric|between:-180,180',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        try {
            $servicio = Servicio::findOrFail($id);
            $servicio->update($request->all());
            return response()->json($servicio);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Servicio no encontrado'], 404);
        }
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
