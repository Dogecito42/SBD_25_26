docker exec -it hive-server beeline -u jdbc:hive2://hive-server:10000 -n hive -e "
CREATE EXTERNAL TABLE IF NOT EXISTS ventas_reporte (
    id INT,
    producto STRING,
    categoria STRING,
    cantidad INT,
    precio_unitario DOUBLE,
    fecha STRING
) 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ',' 
STORED AS TEXTFILE 
LOCATION '/user/hive/warehouse/ventas_jasper/';"
