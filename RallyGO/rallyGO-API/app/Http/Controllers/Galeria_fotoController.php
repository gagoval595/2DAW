<?php

namespace App\Http\Controllers;

use App\Models\Galeria_foto;
use App\Models\Etapa;
use Illuminate\Http\Request;
use Exception;

class Galeria_fotoController extends Controller
{
    public function index()
    {
        try {
            $galerias = Galeria_foto::with('etapa')->get();
            
            return response()->json([
                'message' => 'Galeria recuperada con exito',
                'galerias' => $galerias
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al obtener la galería',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function store(Request $request)
    {
        try {
            $validationRules = [
                'etapa_id' => 'required|exists:etapa,id',
                'url' => 'required|image|mimes:jpeg,png,jpg,gif|max:5120',
            ];
          
            
            $request->validate($validationRules);
            
            // Crear la carpeta si no existe
            $uploadDir = public_path('img/galeria');
            
            // Procesar y guardar la imagen
            if ($request->hasFile('url') && $request->file('url')->isValid()) {
                $filename = time() . '_' . uniqid() . '.' . $request->url->extension();
                $path = $request->url->move($uploadDir, $filename);
                
                // Crear registro en la base de datos - IMPORTANTE: Usar solo columnas que existen
                $foto = new Galeria_foto();
                $foto->etapa_id = $request->etapa_id;
                $foto->url = 'img/galeria/' . $filename;
                
                // Solo asignar descripción si la columna existe
                
                // Muestra la consulta SQL que se va a ejecutar (para diagnóstico)
                $values = [
                    'etapa_id' => $foto->etapa_id,
                    'url' => $foto->url,     // O 'foto' => $foto->foto
                    'descripcion' => $foto->descripcion
                ];
                
                $foto->save();
                
                return response()->json([
                    'status' => 'success',
                    'message' => 'Imagen agregada correctamente a la galería',
                    'data' => $foto
                ], 201);
            }
            
            return response()->json([
                'status' => 'error',
                'message' => 'No se pudo procesar la imagen'
            ], 400);
            
        } catch (\Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Error al procesar la imagen',
                'error' => $e->getMessage(),
                'trace' => config('app.debug') ? $e->getTraceAsString() : null
            ], 500);
        }
    }

    public function show(string $id)
    {
        try {
            $galeria_foto = Galeria_foto::with('etapa')->findOrFail($id);
            
            return response()->json([
                'message' => 'Foto de galería recuperada con éxito',
                'foto' => $galeria_foto
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Foto de galería no encontrada',
                'error' => $e->getMessage()
            ], 404);
        }
    }

    public function destroy(string $id)
    {
        try {
            $galeria_foto = Galeria_foto::findOrFail($id);
            $galeria_foto->delete();
            
            return response()->json([
                'message' => 'Foto eliminada de la galería con éxito'
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error al eliminar la foto de la galería',
                'error' => $e->getMessage()
            ], 500);
        }
    }
    
    // Añadir este método para probar
    public function testUpload(Request $request)
    {
        try {
            $uploadDir = public_path('img/galeria');
            
            // Información del sistema
            $info = [
                'php_version' => phpversion(),
                'max_upload_size' => ini_get('upload_max_filesize'),
                'post_max_size' => ini_get('post_max_size'),
                'upload_dir_exists' => file_exists($uploadDir),
                'upload_dir_writable' => is_writable($uploadDir),
                'request_has_file' => $request->hasFile('test_file')
            ];
            
            if ($request->hasFile('test_file')) {
                $file = $request->file('test_file');
                $info['file_name'] = $file->getClientOriginalName();
                $info['file_size'] = $file->getSize();
                $info['file_mime'] = $file->getMimeType();
                $info['file_extension'] = $file->extension();
                $info['file_valid'] = $file->isValid();
            }
            
            return response()->json([
                'status' => 'success',
                'message' => 'Test de carga de archivos',
                'info' => $info
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Error en el test',
                'error' => $e->getMessage()
            ]);
        }
    }

    // Añade este método de diagnóstico
    public function testSchema()
    {
        try {
          return response()->json([
                'status' => 'success',
                'table_name' => 'galeriaFoto',
                'columns' => 'columns',
                'model_fillable' => (new Galeria_foto())->getFillable()
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Error al obtener el esquema',
                'error' => $e->getMessage()
            ]);
        }
    }
}