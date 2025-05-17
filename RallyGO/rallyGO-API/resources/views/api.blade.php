<!doctype html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>RallyGO API Documentation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('css/index.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 col-lg-10 p-0">
                <div class="container-fluid fonsGris py-3 px-lg-4">
                    <div class="row">
                        <div class="col-12">
                            @if(isset($routes) && count($routes) > 0)
                                <div class="table-responsive">
                                    <table class="table table-striped table-hover align-middle text-center">
                                        <thead class="table-dark">
                                            <tr>
                                                <th>Nombre</th>
                                                <th>Endpoint</th>
                                                <th>Métodos</th>
                                                <th>Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($routes as $route)
                                                <tr>
                                                    <td>{{ $route['name'] }}</td>
                                                    <td><code>{{ $route['endpoint'] }}</code></td>
                                                    <td>
                                                        @foreach ($route['methods'] as $method)
                                                            @php
                                                                $badge_class = 'bg-secondary'; // Default
                                                                switch (strtoupper($method)) {
                                                                    case 'GET': $badge_class = 'bg-success'; break;
                                                                    case 'POST': $badge_class = 'bg-primary'; break;
                                                                    case 'PUT': $badge_class = 'bg-warning text-dark'; break;
                                                                    case 'DELETE': $badge_class = 'bg-danger'; break;
                                                                }
                                                            @endphp
                                                            <span class="badge {{ $badge_class }} me-1">{{ $method }}</span>
                                                        @endforeach
                                                    </td>
                                                    <td>
                                                        <a href="{{ url($route['endpoint']) }}" class="btn btn-sm btn-info" target="_blank">
                                                            <i class="bi bi-eye-fill"></i> Ver JSON
                                                        </a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            @else
                                <div class="col-12">
                                    <p class="text-center">No hay rutas de API para mostrar.</p>
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>