<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Usuario;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash; 

class UsuarioController extends Controller
{
    public function index()
    {
        return response()->json(Usuario::all());
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nombre' => 'required|string|max:50',
            'email' => 'required|email|unique:usuario,email',
            'telefono' => 'required|string|max:15',
            'password' => 'required|string|min:8',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        try {
            $usuario = Usuario::create([
                'nombre' => $request->nombre,
                'email' => $request->email,
                'telefono' => $request->telefono,
                'password' => Hash::make($request->password)
            ]);
            return response()->json($usuario, 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Error al crear el usuario'], 500);
        }
    }

    public function show(string $id)
    {
        try {
            $usuario = Usuario::findOrFail($id);
            return response()->json($usuario);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Usuario no encontrado'], 404);
        }
    }

    public function update(Request $request, string $id)
    {
        $request->validate([
            'nombre' => 'sometimes|required|string|max:50',
            'email' => 'sometimes|required|string|email|max:100|unique:usuario,email,' . $id,
            'telefono' => 'sometimes|nullable|string|max:15',
            'password' => 'sometimes|required|string|min:8',
        ]);

        $usuario = Usuario::find($id);

        if (!$usuario) {
            return response()->json(['message' => 'Usuario no encontrado'], 404);
        }

        $usuario->update($request->only(['nombre', 'email', 'telefono', 'password']));

        if ($request->has('password')) {
            $usuario->password = Hash::make($request->password);
            $usuario->save();
        }

        return response()->json($usuario);
    }

    public function destroy(string $id)
    {
        $usuario = Usuario::find($id);

        if (!$usuario) {
            return response()->json(['message' => 'Usuario no encontrado'], 404);
        }
        $usuario->delete();
        return response()->json(['message' => 'Usuario eliminado con éxito']);
    }
}
