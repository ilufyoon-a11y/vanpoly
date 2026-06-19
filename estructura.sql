CREATE TABLE IF NOT EXISTS partidas (
    id_partida TEXT PRIMARY KEY,
    user_turno TEXT,
    estado TEXT DEFAULT 'esperando'
);

CREATE TABLE IF NOT EXISTS jugadores (
    id_usuario TEXT PRIMARY KEY,
    id_partida TEXT,
    dinero INTEGER DEFAULT 1500,
    posicion INTEGER DEFAULT 0,
    en_carcel INTEGER DEFAULT 0,
    FOREIGN KEY (id_partida) REFERENCES partidas(id_partida)
);

CREATE TABLE IF NOT EXISTS propiedades_partida (
    id_partida TEXT,
    id_casilla INTEGER,
    id_dueno TEXT,
    PRIMARY KEY (id_partida, id_casilla),
    FOREIGN KEY (id_partida) REFERENCES partidas(id_partida),
    FOREIGN KEY (id_dueno) REFERENCES jugadores(id_usuario)
);

CREATE TABLE IF NOT EXISTS tablero_base (
    id_casilla INTEGER PRIMARY KEY,
    nombre TEXT,
    precio_compra INTEGER,
    precio_alquiler INTEGER,
    ruta_imagen TEXT
);
