# SCRIPT para insertar datos en tabla destinos

INSERT INTO destinos
    ( idDestino, destNombre, destPrecio, idRegion, destTotales, destDisponibles, destActivo)
    VALUES
    (DEFAULT, 'Londres (Heathrow)', 9711, 5, 5, 5, DEFAULT),
    (DEFAULT, 'Amsterdam (Schiphol)', 6231, 5, 5, 5, DEFAULT),
    (DEFAULT, 'Miami (Wilcox Field)', 6517, 4, 5, 5, DEFAULT),
    (DEFAULT, 'Tokio (Narita)', 8704, 7, 5, 5, DEFAULT),
    (DEFAULT, 'Kuala Lumpur (KLIA)', 8570, 7, 5, 5, DEFAULT),
    (DEFAULT, 'Bangkok (Suvarnabhumi)', 8469, 7, 5, 5, DEFAULT),
    (DEFAULT, 'París (Charles de Gaulle)', 7713, 5,  5, 5, DEFAULT),
    (DEFAULT, 'Cancún (Cancún)', 6494, 3, 5, 5, DEFAULT),
    (DEFAULT, 'Milán (Malpensa)', 6756, 5, 5, 5, DEFAULT);
