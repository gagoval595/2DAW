<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Servicio;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;

class ServicioController extends Controller
{
    public function index()
    {
        $servicios = Servicio::all();
        return response()->json($servicios);
    }

    public function store(Request $request)
    {
        try {
            // Validar entrada con nombres de tablas consistentes
            $validated = $request->validate([
                'tipo_servicio_id' => 'required|integer|exists:tipo_servicio,id',
                'etapa_id' => 'required|integer|exists:etapa,id',
                'ubicacion' => 'required|string|max:255',
                'latitud' => 'required|numeric',
                'longitud' => 'required|numeric',
            ]);
            
            // Crear servicio
            $servicio = new Servicio();
            $servicio->tipo_servicio_id = $request->tipo_servicio_id;
            $servicio->etapa_id = $request->etapa_id;
            $servicio->ubicación = $request->ubicacion; // Notar la diferencia: ubicación con tilde
            $servicio->latitud = $request->latitud;
            $servicio->longitud = $request->longitud;
            
            $servicio->save();
            
            return response()->json([
                'status' => 'success',
                'message' => 'Servicio creado correctamente',
                'data' => $servicio
            ], 201);
            
        } catch (ValidationException $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Error de validación',
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Error al crear el servicio',
                'error' => $e->getMessage(),
                'trace' => config('app.debug') ? $e->getTraceAsString() : null
            ], 500);
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
