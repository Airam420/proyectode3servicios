CREATE DATABASE IF NOT EXISTS ejemplobd;
USE ejemplobd;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(150) NOT NULL UNIQUE
);

INSERT INTO usuarios (nombre, correo)
SELECT 'usuarioejemplo', 'ejemplo@ejemplo.local'
WHERE NOT EXISTS (
    SELECT 1
    FROM usuarios
    WHERE correo = 'ejemplo@ejemplo.local'
);
