INSERT INTO categorias (nombre, descripcion) VALUES
('Maceteros', 'Contenedores y macetas para todo tipo de plantas'),
('Herramientas de Jardín', 'Herramientas básicas y avanzadas para jardinería'),
('Sustratos y Fertilizantes', 'Tierra, abono y nutrientes para plantas'),
('Semillas y Cultivos', 'Semillas y kits para iniciar cultivos en casa'),
('Accesorios Ecológicos', 'Artículos complementarios para el cuidado sustentable');

INSERT INTO productos (nombre, descripcion, precio, stock, image_url, categoria_id) VALUES
-- Maceteros (id: 1)
('Macetero de barro clásico', 'Macetero artesanal ideal para plantas medianas.', 6900, 20, 'https://example.com/macetero-barro.jpg', 1),
('Macetero colgante de coco', 'Fabricado con fibra de coco y cuerda de yute.', 7500, 15, 'https://example.com/macetero-coco.jpg', 1),
('Maceta autoriego pequeña', 'Ideal para escritorio y plantas suculentas.', 4900, 30, 'https://example.com/maceta-autoriego.jpg', 1),

-- Herramientas de Jardín (id: 2)
('Set de jardinería básico', 'Incluye pala, rastrillo y tijera.', 12990, 25, 'https://example.com/herramientas-basicas.jpg', 2),
('Tijera de podar', 'Hoja de acero inoxidable, mango ergonómico.', 5990, 35, 'https://example.com/tijera-podar.jpg', 2),
('Guantes de jardín reforzados', 'Resistentes a espinas, lavables.', 3990, 40, 'https://example.com/guantes-jardin.jpg', 2),

-- Sustratos y Fertilizantes (id: 3)
('Tierra orgánica para huerto 10kg', 'Ideal para hortalizas y flores.', 8990, 20, 'https://example.com/tierra-huerto.jpg', 3),
('Compost natural 5kg', 'Mejora la fertilidad del suelo.', 6590, 25, 'https://example.com/compost.jpg', 3),
('Fertilizante líquido universal 500ml', 'Para todo tipo de plantas.', 4990, 30, 'https://example.com/fertilizante-liquido.jpg', 3),

-- Semillas y Cultivos (id: 4)
('Semillas de tomate cherry', 'Rápido crecimiento y alto rendimiento.', 1990, 50, 'https://example.com/tomate-cherry.jpg', 4),
('Kit de cultivo albahaca', 'Incluye semillas, sustrato y maceta.', 5990, 20, 'https://example.com/kit-albahaca.jpg', 4),
('Semillas de lechuga hidropónica', 'Apta para cultivos sin tierra.', 2490, 40, 'https://example.com/lechuga.jpg', 4),
('Kit huerto urbano 4 variedades', 'Incluye lechuga, rabanito, rúcula y zanahoria.', 9900, 15, 'https://example.com/kit-huerto.jpg', 4),

-- Accesorios Ecológicos (id: 5)
('Pulverizador manual 1L', 'Para riego suave y eficiente.', 3490, 25, 'https://example.com/pulverizador.jpg', 5),
('Termómetro de suelo', 'Mide la temperatura del sustrato.', 5990, 10, 'https://example.com/termometro.jpg', 5),
('Etiqueta para plantas (pack x20)', 'Identificadores de bambú para macetas.', 2990, 30, 'https://example.com/etiquetas.jpg', 5),
('Invernadero de escritorio', 'Mini invernadero para interior.', 11990, 10, 'https://example.com/invernadero.jpg', 5),
('Sistema de riego por goteo (12 piezas)', 'Ideal para automatizar el riego.', 15990, 12, 'https://example.com/riego.jpg', 5);
