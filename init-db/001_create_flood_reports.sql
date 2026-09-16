-- Garante que o postgis esteja ativo.
CREATE EXTENSION IF NOT EXISTS postgis;

-- Criação de tabelas para armazenar relatorios de alagamentos

CREATE TABLE IF NOT EXISTS flood_reports (
    id SERIAL PRIMARY KEY,
    description TEXT,
    water_level VARCHAR(50), -- Ex: 'Baixo - Transitavel', 'Médio - Transitável com restrições', 'Alto - Intransitável'
    geom GEOMETRY(Point, 4326) NOT NULL,
    created_at TIMESTAMP WITH TIME ZZONE DEFAULT CURRENT_TIMESTAMP,
);

-- Criação do índice espacial para a consulta eficiente de relatórios de alagamentos
CREATE INDEX IF NOT EXISTS idx_flood_reports_geom
ON flood_reports USING GIST (geom);

