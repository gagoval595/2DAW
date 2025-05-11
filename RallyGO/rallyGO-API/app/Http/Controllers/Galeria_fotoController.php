<?php

namespace App\Http\Controllers;

use App\Models\Galeria_foto;
use App\Models\Etapa;
use Illuminate\Http\Request;
use Exception;

class Galeria_fotoController extends Controller
{
    public function index()
    {
        try {
            $galerias = Galeria_foto::with('etapa')->get();
            
            return response()->json([
                'message' => 'Galeria recuperada con exito',
                'galerias' => $galerias
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al obtener la galería',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'etapa_id' => 'required|exists:etapa,id',
                'url' => 'required|string|max:255',
            ]);

            $galeria_foto = Galeria_foto::create($request->all());

            return response()->json([
                'message' => 'Foto añadida a la galería con éxito',
                'foto' => $galeria_foto
            ], 201);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al guardar la foto en la galería',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function show(string $id)
    {
        try {
            $galeria_foto = Galeria_foto::with('etapa')->findOrFail($id);
            
            return response()->json([
                'message' => 'Foto de galería recuperada con éxito',
                'foto' => $galeria_foto
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Foto de galería no encontrada',
                'error' => $e->getMessage()
            ], 404);
        }
    }

    public function destroy(string $id)
    {
        try {
            $galeria_foto = Galeria_foto::findOrFail($id);
            $galeria_foto->delete();
            
            return response()->json([
                'message' => 'Foto eliminada de la galería con éxito'
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al eliminar la foto de la galería',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}