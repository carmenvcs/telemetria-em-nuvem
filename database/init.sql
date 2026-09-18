-- Informações sobre o carro em análise
CREATE TABLE IF NOT EXISTS veiculos ( 
    id_car SERIAL PRIMARY KEY,  -- identificador do carro analisado
    model VARCHAR(50) UNIQUE NOT NULL,
    peso NUMERIC(6,2) -- em Kg
);

-- Tabela de telemetria
CREATE TABLE IF NOT EXISTS telemetria_motor (
    id_registro SERIAL PRIMARY KEY, -- id único da instância
    id_car INTEGER REFERENCES veiculos(id_car), -- identificador do carro analisado (importado de veiculos)
    time INTEGER NOT NULL, -- em segundos
    speed NUMERIC(5,2), -- em Km/h
    motor_temp NUMERIC(5,2), -- em graus celsius
    accel NUMERIC(5,2), -- em m/s²
	CONSTRAINT car_time_unico UNIQUE(id_car, time)
);

INSERT INTO veiculos (model, peso) VALUES 
('Toyota Corolla XEI 2003', 1160.00),
('Carro Combustão B', 310.50)
ON CONFLICT (model) DO NOTHING;

INSERT INTO telemetria_motor (id_car, time, speed, motor_temp, accel) 
VALUES 
(1, 1, 22.00, 85.00, 6.10),    
(1, 2, 43.00, 87.50, 5.80),    
(1, 3, 58.00, 90.0, 4.32),     
(1, 4, 70.00, 92.5, 3.33)      
ON CONFLICT (id_car, time) 
DO UPDATE SET 
    speed = EXCLUDED.speed,
    motor_temp = EXCLUDED.motor_temp,
    accel = EXCLUDED.accel;
	
SELECT time, speed, motor_temp, accel 
FROM telemetria_motor
WHERE id_car = 1
ORDER BY time ASC;
