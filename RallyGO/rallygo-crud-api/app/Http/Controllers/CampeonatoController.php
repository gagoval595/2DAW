<?php

namespace App\Http\Controllers;

use Illuminate\Http\Response;
use App\Models\Usuario;
use App\Http\Requests\UsuarioRequest;
use App\Http\Resources\UsuarioResource;

class UsuarioController extends Controller
{
    /**
     * GET /api/usuarios
     */
    public function index()
    {
        return UsuarioResource::collection(Usuario::all());
    }

    /**
     * POST /api/usuarios
     */
    public function store(UsuarioRequest $request)
    {
        $data = $request->validated();
        $data['contrasena'] = bcrypt($data['contrasena']);
        $usuario = Usuario::create($data);

        return (new UsuarioResource($usuario))
            ->response()
            ->setStatusCode(Response::HTTP_CREATED);
    }

    /**
     * GET /api/usuarios/{usuario}
     */
    public function show(Usuario $usuario)
    {
        return new UsuarioResource($usuario);
    }

    /**
     * PUT /api/usuarios/{usuario}
     */
    public function update(UsuarioRequest $request, Usuario $usuario)
    {
        $data = $request->validated();
        if (isset($data['contrasena'])) {
            $data['contrasena'] = bcrypt($data['contrasena']);
        }
        $usuario->update($data);

        return new UsuarioResource($usuario);
    }

    /**
     * DELETE /api/usuarios/{usuario}
     */
    public function destroy(Usuario $usuario)
    {
        $usuario->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }
}
