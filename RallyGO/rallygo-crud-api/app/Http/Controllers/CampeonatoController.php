<?php

namespace App\Http\Controllers;

use App\Models\Campeonato;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator; //validar campeonats mitjançant laravel

class CampeonatoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $campeonatos = Campeonato::all();

        $data = [
            'message' => $campeonatos,
            'status' => 200
        ];

        return response()->json($data, 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nombre' => 'required|max:10',
        ]);

        if ($validator->fails()) {
            $data = [
                'message' => 'Error en la validación de los datos',
                'errors' => $validator->errors(),
                'status' => 400
            ];
            return response()->json($data, 400);
        }

        $campeonato = Campeonato::create([
            'nombre' => $request->nombre
        ]);

        $data = [
            'message' => 'Campeonato creado con éxito',
            'status' => 201,
            'usuario' => $campeonato
        ];

        return response()->json($data, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Campeonato $campeonato)
    {
       $campeonato = Campeonato::find($campeonato->id);

        if (!$campeonato) {
            $data = [
                'message' => 'Campeonato no encontrado',
                'status' => 404
            ];
            return response()->json($data, 404);
        }

        $data = [
            'message' => $campeonato,
            'status' => 200
        ];

        return response()->json($data, 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Campeonato $campeonato)
    {
        $campeonato = Campeonato::find($campeonato->id);
        if (!$campeonato) {
            $data = [
                'message' => 'Campeonato no encontrado',
                'status' => 404
            ];
            return response()->json($data, 404);
        }
        $validator = Validator::make($request->all(), [
            'nombre' => 'required|max:10',
        ]);
        if ($validator->fails()) {
            $data = [
                'message' => 'Error en la validación de los datos',
                'errors' => $validator->errors(),
                'status' => 400
            ];
            return response()->json($data, 400);
        }
        
        $campeonato->nombre = $request->nombre;
        
        $campeonato->save();
        
        $data = [
            'message' => 'Campeonato actualizado con éxito',
            'status' => 200,
            'campeonato' => $campeonato
        ];
    return response()->json($data, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Campeonato $campeonato)
    {
        $campeonato = Campeonato::find($campeonato->id);

        if (!$campeonato) {
            $data = [
                'message' => 'Campeonato no encontrado',
                'status' => 404
            ];
            return response()->json($data, 404);
        }

        $campeonato->delete();

        $data = [
            'message' => 'Campeonato eliminado con éxito',
            'status' => 200
        ];

        return response()->json($data, 200);
    }

    public function parte(Request $request, $id)
    {

        $campeonato = Campeonato::find($id);
        if (!$campeonato) {
            $data = [
                'message' => 'Campeonato no encontrado',
                'status' => 404
            ];
            return response()->json($data, 404);
        }
        $validator = Validator::make($request->all(), [
            'nombre' => 'required|max:10',
        ]);

        if ($validator->fails()) {
            $data = [
                'message' => 'Error en la validación de los datos',
                'errors' => $validator->errors(),
                'status' => 400
            ];
            return response()->json($data, 400);
        }
        $campeonato->nombre = $request->nombre;
      
        $campeonato->save();
      
        $data = [
            'message' => 'Campeonato actualizado con éxito',
            'status' => 200,
            'campeonato' => $campeonato
        ];
        return response()->json($data, 200);
    }
}
