<?php
namespace App\Http\Controllers;

use App\Models\Servicio;
use Illuminate\Http\Request;

class ServicioController extends Controller
{
    public function index()
    {
        return response()->json(Servicio::all(), 200);
    }

    public function store(Request $request)
    {
        $request->validate([
            'etapa_id'     => 'required|exists:etapa,id',
            'tipo'         => 'required|in:Renting,Parking,Hotel,Camping',
            'descripcion'  => 'nullable|string',
            'precio'       => 'nullable|string|max:50',
            'ubicacion'    => 'nullable|string|max:255',
        ]);

        $s = Servicio::create($request->only(
            'etapa_id','tipo','descripcion','precio','ubicacion'
        ));

        return response()->json($s, 201);
    }

    public function show($id)
    {
        $s = Servicio::find($id);
        if (! $s) {
            return response()->json(['message'=>'Servicio no encontrado'],404);
        }
        return response()->json($s,200);
    }

    public function update(Request $request, $id)
    {
        $s = Servicio::find($id);
        if (! $s) {
            return response()->json(['message'=>'Servicio no encontrado'],404);
        }

        $request->validate([
            'etapa_id'     => 'required|exists:etapa,id',
            'tipo'         => 'required|in:Renting,Parking,Hotel,Camping',
            'descripcion'  => 'nullable|string',
            'precio'       => 'nullable|string|max:50',
            'ubicacion'    => 'nullable|string|max:255',
        ]);

        $s->update($request->only(
            'etapa_id','tipo','descripcion','precio','ubicacion'
        ));

        return response()->json($s,200);
    }

    public function parte(Request $request, $id)
    {
        $s = Servicio::find($id);
        if (! $s) {
            return response()->json(['message'=>'Servicio no encontrado'],404);
        }

        $validator = validator($request->all(), [
            'etapa_id'     => 'nullable|exists:etapa,id',
            'tipo'         => 'nullable|in:Renting,Parking,Hotel,Camping',
            'descripcion'  => 'nullable|string',
            'precio'       => 'nullable|string|max:50',
            'ubicacion'    => 'nullable|string|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors'=>$validator->errors()],400);
        }

        foreach (['etapa_id','tipo','descripcion','precio','ubicacion'] as $field) {
            if ($request->has($field)) {
                $s->$field = $request->$field;
            }
        }
        $s->save();

        return response()->json($s,200);
    }

    public function destroy($id)
    {
        $s = Servicio::find($id);
        if (! $s) {
            return response()->json(['message'=>'Servicio no encontrado'],404);
        }
        $s->delete();
        return response()->json(null,204);
    }
}
