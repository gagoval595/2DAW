<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Usuario;
use Illuminate\Support\Facades\Validator; //validar usuaris mitjançant laravel

class UsuarioController extends Controller
{
    public function index()
    {
        $usuario = Usuario::all();

        // if ($usuario->isEmpty()) {
        //     $data = [
        //         'message' => 'No se encontraron usuarios',
        //         'status' => 404
        //     ];
        //     return response()->json($data, 404);
        // }

        $data = [
            'message' => $usuario,
            'status' => 200
        ];

        return response()->json($data, 200);
    }

    //mostra una llista d'objectes JSON de la bd 
    public function guarda(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nombre_usuario' => 'required|max:100',
            'correo' => 'required|email|unique:usuario',
            'contrasena' => 'required|min:6'
        ]);

        if ($validator->fails()) {
            $data = [
                'message' => 'Error en la validación de los datos',
                'errors' => $validator->errors(),
                'status' => 400
            ];
            return response()->json($data, 400);
        }

        $usuario = Usuario::create([
            'nombre_usuario' => $request->nombre_usuario,
            'correo' => $request->correo,
            'contrasena' => bcrypt($request->contrasena)
        ]);

        $data = [
            'message' => 'Usuario creado con éxito',
            'status' => 201,
            'usuario' => $usuario
        ];

        return response()->json($data, 201);
    }

    //lo mateix pero mostra sols un usuari(per id)
    public function visualiza($id)
    {
        $usuario = Usuario::find($id);

        if (!$usuario) {
            $data = [
                'message' => 'Usuario no encontrado',
                'status' => 404
            ];
            return response()->json($data, 404);
        }
        $data = [
            'usuario' => $usuario,
            'status' => 200
        ];

        return response()->json($data, 200);
    }
    // elimina usuari indicat
    public function elimina($id)
    {
        $usuario = Usuario::find($id);

        if (!$usuario) {
            $data = [
                'message' => 'Usuario no encontrado',
                'status' => 404
            ];
            return response()->json($data, 404);
        }

        $usuario->delete();

        $data = [
            'message' => 'Usuario Eliminado',
            'status' => 200
        ];

        return response()->json($data, 200);
    }
    // actualitza tot el usuari (has de passar tot el objecte usuari)
    public function actualiza(Request $request, $id)
    {
        $usuario = Usuario::find($id);

        if (!$usuario) {
            $data = [
                'message' => 'Usuario no encontrado',
                'status' => 404
            ];
            return response()->json($data, 404);
        }

        $validator = Validator::make($request->all(), [
            'nombre_usuario' => 'required|max:100',
            'correo' => 'required|email',
            'contrasena' => 'required|min:6'
        ]);

        if ($validator->fails()) {
            $data = [
                'message' => 'Error en la validación de los datos',
                'errors' => $validator->errors(),
                'status' => 400
            ];
            return response()->json($data, 400);
        }

        $usuario->nombre_usuario = $request->nombre_usuario;
        $usuario->correo = $request->correo;
        $usuario->contrasena = $request->contrasena;

        $usuario->save();

        $data = [
            'message' => 'Usuario actualizado',
            'usuario' => $usuario,
            'status' => 200
        ];
    }

    // actualitza una part del usuari (ex: "nombre_usuario": 'Miquel')
    public function parte(Request $request, $id)
    {

        $usuario = Usuario::find($id);

        if (!$usuario) {
            $data = [
                'message' => 'Usuario no encontrado',
                'status' => 404
            ];
            return response()->json($data, 404);
        }

        $validator = Validator::make($request->all(), [
            'nombre_usuario' => 'nullable|max:100',
            'correo' => 'nullable|email',
            'contrasena' => 'nullable|min:6'
        ]);

        if ($validator->fails()) {
            $data = [
                'message' => 'Error en la validación de los datos',
                'errors' => $validator->errors(),
                'status' => 400
            ];
            return response()->json($data, 400);
        }

        if ($request->has('nombre_usuario')) {
            $usuario->nombre_usuario = $request->nombre_usuario;
        }

        if ($request->has('correo')) {
            $usuario->correo = $request->correo;
        }

        if ($request->has('contrasena')) {
            $usuario->contrasena = bcrypt($request->contrasena);
        }

        $usuario->save();

        $data = [
            'message' => 'Usuario actualizado parcialmente',
            'usuario' => $usuario,
            'status' => 200
        ];

        return response()->json($data, 200);
    }
}