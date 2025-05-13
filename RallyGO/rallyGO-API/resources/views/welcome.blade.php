<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RallyGO API</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
    <div class="container py-5">
        <h1 class="mb-4">RallyGO API - Endpoints</h1>
        
        <div class="row">
            @foreach($routes as $route)
                <div class="col-md-6 mb-4">
                    <div class="endpoint">
                        <h3>{{ $route['name'] }}</h3>
                        <p class="text-muted">{{ $route['endpoint'] }}</p>
                        <div>
                            @foreach($route['methods'] as $method)
                                <span class="method {{ strtolower($method) }}">{{ $method }}</span>
                            @endforeach
                        </div>
                        <a href="{{ url($route['endpoint']) }}" class="test-link" target="_blank">
                            Ver JSON
                        </a>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</body>
</html>
