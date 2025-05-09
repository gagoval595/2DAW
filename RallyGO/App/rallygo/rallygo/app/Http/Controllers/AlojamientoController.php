<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\LugarAlojamiento; // Asegúrate de que la ruta sea correcta

class AlojamientoController extends Controller
{
    public function store(Request $request)
    {
        // Validar los datos recibidos
        $validated = $request->validate([
            'nombre' => 'required|string|max:100',
            'direccion' => 'required|string|max:255',
            'lat' => 'required|numeric|between:-90,90',
            'lng' => 'required|numeric|between:-180,180',
            'place_id' => 'required|string|max:100',
            'url' => 'required|string|max:255',
            'photo_url' => 'nullable|string|max:255',
        ]);

        // Verificar si ya existe un alojamiento con el mismo place_id
        $exists = LugarAlojamiento::where('place_id', $validated['place_id'])->exists();

        if ($exists) {
            return response()->json(['message' => 'El alojamiento ya existe en la base de datos'], 409);
        }

        // Crear el nuevo alojamiento
        $alojamiento = LugarAlojamiento::create($validated);

        return response()->json([
            'message' => 'Alojamiento guardado correctamente',
            'data' => $alojamiento
        ], 201);
    }
}
