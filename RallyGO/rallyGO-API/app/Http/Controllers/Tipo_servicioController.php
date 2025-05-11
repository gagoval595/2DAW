<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Tipo_servicioController extends Controller
{
    public function index()
    {
         return response()->json(Tipo_servicioController::all());
    }

    public function store(Request $request)
    {
        $request->validate([
            'tipo' => 'required|in:Hotel,Parquing,Camping',
            'nombre' => 'required|string|max:50',
            'descripcion' => 'required|string|max:255',
        ]);

        $Tipo_servicioController = new Tipo_servicioController();
        $Tipo_servicioController->tipo = $request->tipo;
        $Tipo_servicioController->nombre = $request->nombre;
        $Tipo_servicioController->descripcion = $request->descripcion;
        $Tipo_servicioController->save();

        return response()->json($Tipo_servicioController, 201);
    }

    public function show(string $id)
    {
        $Tipo_servicioController = Tipo_servicioController::find($id);

        if (!$Tipo_servicioController) {
            return response()->json(['message' => 'Tipo de servicio no encontrado'], 404);
        }

        return response()->json($Tipo_servicioController);
    }

    public function update(Request $request, string $id)
    {
        $request->validate([
            'tipo' => 'sometimes|required|in:Hotel,Parquing,Camping',
            'nombre' => 'sometimes|required|string|max:50',
            'descripcion' => 'sometimes|required|string|max:255',
        ]);

        $Tipo_servicioController = Tipo_servicioController::find($id);

        if (!$Tipo_servicioController) {
            return response()->json(['message' => 'Tipo de servicio no encontrado'], 404);
        }

        $Tipo_servicioController->update($request->all());

        return response()->json($Tipo_servicioController);
    }

    public function destroy(string $id)
    {
        $Tipo_servicioController = Tipo_servicioController::find($id);

        if (!$Tipo_servicioController) {
            return response()->json(['message' => 'Tipo de servicio no encontrado'], 404);
        }

        $Tipo_servicioController->delete();

        return response()->json(['message' => 'Tipo de servicio eliminado']);
    }
}
