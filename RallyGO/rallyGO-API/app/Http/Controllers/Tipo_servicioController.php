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
            $tipos = TipoServicio::with(['servicios', 'servicios.fotos'])->get();
            
            // Añadir URLs completas para las imágenes
            $tipos->each(function ($tipo) {
                if ($tipo->foto) {
                    $tipo->foto_url = url($tipo->foto);
                }
                if ($tipo->icono) {
                    $tipo->icono_url = url($tipo->icono);
                }
                
                // También procesar las fotos de los servicios
                if ($tipo->servicios) {
                    $tipo->servicios->each(function ($servicio) {
                        if ($servicio->fotos && $servicio->fotos->ruta) {
                            $servicio->foto_url = url($servicio->fotos->ruta);
                        }
                    });
                }
            });
            
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
                'tipo' => 'required|string',
                'nombre' => 'required|string|max:255',
                'descripcion' => 'required|string',
                'foto' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
                'icono' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:1024',
            ]);
            
            // Guardar tipo de servicio
            $tipoServicio = new TipoServicio();
            $tipoServicio->tipo = $request->tipo;
            $tipoServicio->nombre = $request->nombre;
            $tipoServicio->descripcion = $request->descripcion;
            
            // Guardar foto en public/img/servicios
            if ($request->hasFile('foto') && $request->file('foto')->isValid()) {
                $filename = time() . '.' . $request->foto->extension();
                $request->foto->move(public_path('img/servicios'), $filename);
                $tipoServicio->foto = 'img/servicios/' . $filename;
            }
            
            // Guardar icono en public/img/iconos
            if ($request->hasFile('icono') && $request->file('icono')->isValid()) {
                $filename = time() . '-icon.' . $request->icono->extension();
                $request->icono->move(public_path('img/iconos'), $filename);
                $tipoServicio->icono = 'img/iconos/' . $filename;
            }
            
            $tipoServicio->save();
            
            return response()->json([
                'status' => 'success',
                'message' => 'Tipo de servicio creado correctamente',
                'data' => $tipoServicio
            ], 201);
            
        } catch (\Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Error al crear tipo de servicio',
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
