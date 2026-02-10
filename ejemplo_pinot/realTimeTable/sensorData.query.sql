-- 1. Selección simple
SELECT * FROM sensorData LIMIT 10;

-- 2. Agregaciones
SELECT COUNT(*) FROM sensorData;
SELECT AVG(temperature), MIN(humidity), MAX(humidity) FROM sensorData;

-- 3. Filtrado por tiempo
SELECT * FROM sensorData WHERE timestamp > 1700000000000 LIMIT 10;

-- 4. Agrupaciones
SELECT sensor_id, COUNT(*), AVG(temperature) FROM sensorData GROUP BY sensor_id;

-- 5. Consulta distribuida - ver segmentos utilizados
SELECT COUNT(*) FROM sensorData OPTION(ENABLE_TRACE=true);

-- 6. Ordenación
SELECT * FROM sensorData ORDER BY temperature DESC LIMIT 10;

-- 7. Filtrado con condición
SELECT * FROM sensorData WHERE temperature > 25 LIMIT 10;

-- 8. Agregación con filtro
SELECT sensor_id, AVG(temperature) FROM sensorData WHERE humidity > 50 GROUP BY sensor_id;
