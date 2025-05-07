<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ReservaRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules()
    {
        return [
            'usuario_id'        => 'required|exists:usuario,id',
            'servicio_id'       => 'required|exists:servicio,id',
            'estado_reserva_id' => 'required|exists:estado_reserva,id',
            'fecha'             => 'nullable|date',
        ];
    }
    
}
