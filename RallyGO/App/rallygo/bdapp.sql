-- Tabla de usuarios
CREATE TABLE usuario (
  id SERIAL PRIMARY KEY,
  nombre_usuario VARCHAR(50) NOT NULL,
  correo VARCHAR(100) NOT NULL UNIQUE,
  contrasena VARCHAR(255) NOT NULL,
  creado_en TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de campeonatos
CREATE TABLE campeonato (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  fecha VARCHAR(50) NOT NULL,
  championship_id VARCHAR(20) NOT NULL,
  ubicacion VARCHAR(255) NOT NULL,
  superficie VARCHAR(50),
  total_tramos INT,
  distancia_total DECIMAL(8,2),
  historia TEXT,
  datos_curiosos TEXT,
  image_asset VARCHAR(100),
  centro_lat DECIMAL(10,6),
  centro_lng DECIMAL(10,6),
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de tramos (asociados a campeonatos)
CREATE TABLE tramo (
  id SERIAL PRIMARY KEY,
  campeonato_id INT REFERENCES campeonato(id),
  nombre VARCHAR(100) NOT NULL
  -- polilinea: se recomienda guardar como GeoJSON o en tabla aparte si se requiere
);

-- Tabla de servicios (asociados a campeonatos o tramos)
CREATE TABLE servicio (
  id SERIAL PRIMARY KEY,
  etapa_id INT REFERENCES tramo(id),
  tipo VARCHAR(50) NOT NULL,
  descripcion TEXT,
  precio VARCHAR(20),
  ubicacion VARCHAR(255),
  creado_en TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de reservas
CREATE TABLE reserva (
  id SERIAL PRIMARY KEY,
  usuario_id INT REFERENCES usuario(id),
  servicio_id INT REFERENCES servicio(id),
  estado_reserva_id INT,
  fecha TIMESTAMP NOT NULL
);

-- Tabla de ranking
CREATE TABLE ranking (
  id SERIAL PRIMARY KEY,
  posicion INT NOT NULL,
  piloto VARCHAR(100) NOT NULL,
  puntos INT NOT NULL,
  equipo VARCHAR(100) NOT NULL
);

-- Tabla de noticias
CREATE TABLE noticia (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(200) NOT NULL,
  resumen TEXT,
  fecha_publicacion TIMESTAMP NOT NULL,
  url VARCHAR(255),
  url_imagen VARCHAR(255)
);

-- Tabla de alojamientos (lugares)
CREATE TABLE lugar_alojamiento (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  direccion VARCHAR(255) NOT NULL,
  lat DECIMAL(10,6) NOT NULL,
  lng DECIMAL(10,6) NOT NULL,
  place_id VARCHAR(100) NOT NULL,
  url VARCHAR(255) NOT NULL,
  photo_url VARCHAR(255)
);