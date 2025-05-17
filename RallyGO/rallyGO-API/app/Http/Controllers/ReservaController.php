<?php

namespace App\Http\Controllers;

use App\Models\Reserva;
use Illuminate\Http\Request;
use Exception;

class ReservaController extends Controller
{
    /**
     * Obtener listado de reservas
     */
    public function index()
    {
        $reservas = Reserva::with('servicio')->get();
        return response()->json($reservas);
    }

    /**
     * Crear una nueva reserva
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'servicio_id' => 'required|exists:servicio,id',
            'nombre_cliente' => 'required|string|max:255',
            'email_cliente' => 'required|email',
            'telefono' => 'required|string',
            'fecha_inicio' => 'required|date',
            'fecha_fin' => 'required|date|after_or_equal:fecha_inicio',
            'numero_personas' => 'required|integer|min:1',
            'comentarios' => 'nullable|string'
        ]);

        $reserva = Reserva::create($validated);
        return response()->json($reserva, 201);
    }

    /**
     * Mostrar una reserva específica
     */
    public function show(string $id)
    {
        try {
            $reserva = Reserva::with('servicio')->findOrFail($id);
            return response()->json($reserva);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Reserva no encontrada'
            ], 404);
        }
    }

    /**
     * Actualizar una reserva existente
     */
    public function update(Request $request, string $id)
    {
        try {
            $reserva = Reserva::findOrFail($id);
            
            $validated = $request->validate([
                'servicio_id' => 'sometimes|required|exists:servicio,id',
                'nombre_cliente' => 'sometimes|required|string|max:255',
                'email_cliente' => 'sometimes|required|email',
                'telefono' => 'sometimes|required|string',
                'fecha_inicio' => 'sometimes|required|date',
                'fecha_fin' => 'sometimes|required|date|after_or_equal:fecha_inicio',
                'numero_personas' => 'sometimes|required|integer|min:1',
                'comentarios' => 'nullable|string'
            ]);
            
            $reserva->update($validated);
            
            return response()->json($reserva);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al actualizar la reserva',
                'error' => $e->getMessage()
            ], 400);
        }
    }

    /**
     * Eliminar una reserva
     */
    public function destroy(string $id)
    {
        try {
            $reserva = Reserva::findOrFail($id);
            $reserva->delete();
            
            return response()->json([
                'message' => 'Reserva eliminada correctamente'
            ]);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al eliminar la reserva',
                'error' => $e->getMessage()
            ], 400);
        }
    }
    
    /**
     * Buscar reservas por cliente
     */
    public function buscarPorCliente(Request $request)
    {
        $query = $request->get('query');
        
        $reservas = Reserva::where('nombre_cliente', 'like', "%{$query}%")
                          ->orWhere('email_cliente', 'like', "%{$query}%")
                          ->with('servicio')
                          ->get();
                          
        return response()->json($reservas);
    }
    
    /**
     * Listar reservas entre un rango de fechas
     */
    public function porFechas(Request $request)
    {
        $request->validate([
            'fecha_inicio' => 'required|date',
            'fecha_fin' => 'required|date|after_or_equal:fecha_inicio',
        ]);
        
        $fechaInicio = $request->fecha_inicio;
        $fechaFin = $request->fecha_fin;
        
        $reservas = Reserva::whereBetween('fecha_inicio', [$fechaInicio, $fechaFin])
                          ->orWhereBetween('fecha_fin', [$fechaInicio, $fechaFin])
                          ->with('servicio')
                          ->get();
                          
        return response()->json($reservas);
    }
}