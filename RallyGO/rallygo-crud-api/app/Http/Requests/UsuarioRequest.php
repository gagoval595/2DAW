<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UsuarioRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }
    public function rules(): array
    {
        $rules = [
            'nombre_usuario' => 'required|string|max:255',
            'correo'         => 'required|email|unique:usuarios,correo,' . $this->route('usuario'),
            'contrasena'     => 'required|string|min:6',
        ];

        if ($this->isMethod('PUT') || $this->isMethod('PATCH')) {
            $rules['contrasena'] = 'nullable|string|min:6';
        }

        return $rules;
    }
}