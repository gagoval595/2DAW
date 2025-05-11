<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Galeria_fotoController extends Controller
{
    public function index()
    {
        $galeria_foto = Galeria_fotoController::all();
        return response()->json($galeria_foto);
    }

    public function store(Request $request)
    {
        $request->validate([
            'etapa_id' => 'required|exists:etapa,id',
            'url' => 'required|url|max:255',
        ]);

        $galeria_foto = new Galeria_fotoController();
        $galeria_foto->etapa_id = $request->etapa_id;
        $galeria_foto->url = $request->url;
        $galeria_foto->save();

        return response()->json($galeria_foto, 201);
    }

    public function show(string $id)
    {
        $galeria_foto = Galeria_fotoController::find($id);

        if (!$galeria_foto) {
            return response()->json(['message' => 'Galería de fotos no encontrada'], 404);
        }

        return response()->json($galeria_foto);
    }

    public function update(Request $request, string $id)
    {
        $request->validate([
            'etapa_id' => 'sometimes|required|exists:etapa,id',
            'url' => 'sometimes|required|url|max:255',
        ]);

        $galeria_foto = Galeria_fotoController::find($id);

        if (!$galeria_foto) {
            return response()->json(['message' => 'Galería de fotos no encontrada'], 404);
        }

        $galeria_foto->update($request->all());

        return response()->json($galeria_foto);  
    }

    public function destroy(string $id)
    {
        $galeria_foto = Galeria_fotoController::find($id);
        if ($galeria_foto) {
            $galeria_foto->delete();
            return response()->json(['message' => 'Galería de fotos eliminada con éxito'], 200);
        } else {
            return response()->json(['message' => 'Galería de fotos no encontrada'], 404);
        }
    }
}
