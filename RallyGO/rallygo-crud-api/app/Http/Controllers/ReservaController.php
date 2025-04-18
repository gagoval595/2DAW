<?php

namespace App\Http\Controllers;

use App\Models\Reserva;
use Illuminate\Http\Request;

class ReservaController extends Controller
{
    public function index()
    {
        return response()->json(Reserva::all(),200);
    }

    public function store(Request $request)
    {
        $request->validate([
            'usuario_id'       => 'required|exists:usuario,id',
            'servicio_id'      => 'required|exists:servicio,id',
            'estado_reserva_id'=> 'required|exists:estado_reserva,id',
            'fecha'            => 'nullable|date',
        ]);

        $r = Reserva::create($request->only(
            'usuario_id','servicio_id','estado_reserva_id','fecha'
        ));

        return response()->json($r,201);
    }

    public function show($id)
    {
        $r = Reserva::find($id);
        if (! $r) {
            return response()->json(['message'=>'Reserva no encontrada'],404);
        }
        return response()->json($r,200);
    }

    public function update(Request $request, $id)
    {
        $r = Reserva::find($id);
        if (! $r) {
            return response()->json(['message'=>'Reserva no encontrada'],404);
        }

        $request->validate([
            'usuario_id'       => 'required|exists:usuario,id',
            'servicio_id'      => 'required|exists:servicio,id',
            'estado_reserva_id'=> 'required|exists:estado_reserva,id',
            'fecha'            => 'nullable|date',
        ]);

        $r->update($request->only(
            'usuario_id','servicio_id','estado_reserva_id','fecha'
        ));

        return response()->json($r,200);
    }

    public function parte(Request $request, $id)
    {
        $r = Reserva::find($id);
        if (! $r) {
            return response()->json(['message'=>'Reserva no encontrada'],404);
        }

        $validator = validator($request->all(), [
            'usuario_id'       => 'nullable|exists:usuario,id',
            'servicio_id'      => 'nullable|exists:servicio,id',
            'estado_reserva_id'=> 'nullable|exists:estado_reserva,id',
            'fecha'            => 'nullable|date',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors'=>$validator->errors()],400);
        }

        foreach (['usuario_id','servicio_id','estado_reserva_id','fecha'] as $f) {
            if ($request->has($f)) {
                $r->$f = $request->$f;
            }
        }
        $r->save();

        return response()->json($r,200);
    }

    public function destroy($id)
    {
        $r = Reserva::find($id);
        if (! $r) {
            return response()->json(['message'=>'Reserva no encontrada'],404);
        }
        $r->delete();
        return response()->json(null,204);
    }
}
