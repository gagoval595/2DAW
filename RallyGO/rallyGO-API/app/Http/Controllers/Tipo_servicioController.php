<?php

namespace App\Http\Controllers;

use App\Models\TipoServicio;
use Illuminate\Http\Request;
use Exception;

class Tipo_servicioController extends Controller
{
    public function index()
    {
        try {
            $tipos = TipoServicio::with('servicios')->get();
            return response()->json([
                'tipos' => $tipos
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al obtener los tipos de servicio',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'tipo' => 'required|in:Hotel,Parquing,Camping,Apartamento',
                'nombre' => 'required|string|max:255',
                'descripcion' => 'required|string|max:255',
                'foto' => 'nullable|string|max:255',
                'icono' => 'nullable|string|max:255',
            ]);

            $tipoServicio = TipoServicio::create($request->all());

            return response()->json([
                'message' => 'Tipo de servicio creado con éxito',
                'tipo' => $tipoServicio
            ], 201);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al crear el tipo de servicio',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function show(string $id)
    {
        try {
            $tipoServicio = TipoServicio::with('servicios')->findOrFail($id);
            return response()->json([
                'message' => 'Tipo de servicio recuperado con éxito',
                'tipo' => $tipoServicio
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Tipo de servicio no encontrado',
                'error' => $e->getMessage()
            ], 404);
        }
    }
    public function update(Request $request, string $id)
    {
        try {
            $tipoServicio = TipoServicio::findOrFail($id);
            $tipoServicio->update($request->all());

            return response()->json([
                'message' => 'Tipo de servicio actualizado con éxito',
                'tipo' => $tipoServicio
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al actualizar el tipo de servicio',
                'error' => $e->getMessage()
            ], 500);
        }
    }
    public function destroy(string $id)
    {
        try {
            $tipoServicio = TipoServicio::findOrFail($id);
            $tipoServicio->delete();

            return response()->json([
                'message' => 'Tipo de servicio eliminado con éxito'
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al eliminar el tipo de servicio',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
