<?php

namespace App\Http\Controllers;

use App\Models\Foto;
use App\Models\Servicio;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Exception;

class FotoController extends Controller
{
    public function index($servicioId)
    {
        try {
            $servicio = Servicio::findOrFail($servicioId);
            $fotos = Foto::where('servicio_id', $servicioId)->get();

            if ($fotos->isEmpty()) {
                return response()->json([
                    'message' => 'No hay fotos para este servicio',
                    'fotos' => []
                ], 200);
            }

            return response()->json([
                'message' => 'Fotos recuperadas con éxito',
                'fotos' => $fotos
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al obtener las fotos',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function store(Request $request, $servicioId)
    {
        try {
            $servicio = Servicio::findOrFail($servicioId);

            $validator = Validator::make($request->all(), [
                'url' => 'required|string|max:255',
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'message' => 'Error de validación',
                    'errors' => $validator->errors()
                ], 422);
            }

            $foto = new Foto([
                'servicio_id' => $servicioId,
                'url' => $request->url,
            ]);

            $foto->save();

            return response()->json([
                'message' => 'Foto añadida con éxito',
                'foto' => $foto
            ], 201);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al guardar la foto',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function destroy($id)
    {
        try {
            $foto = Foto::findOrFail($id);
            $foto->delete();
            
            return response()->json([
                'message' => 'Foto eliminada con éxito'
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al eliminar la foto',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
