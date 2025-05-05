<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EtapaRequest extends FormRequest
{
    public function authorize(): bool
    {
        return false;
    }
    
    public function rules()
    {
        return [
            'campeonato_id' => 'required|exists:campeonato,id',
            'nombre'        => 'required|string|max:100',
            'fecha'         => 'nullable|date',
        ];
    }
}
