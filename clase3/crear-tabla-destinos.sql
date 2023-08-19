# Creación de tabla destinos

CREATE TABLE destinos
(
    idDestino smallint unsigned auto_increment primary key not null,
    destNombre varchar(100) unique not null,
    destPrecio float(12,2) unsigned not null,
    idRegion tinyint unsigned not null,
        foreign key (idRegion) references regiones (idRegion),
    destTotales tinyint unsigned not null,
    destDisponibles tinyint unsigned not null,
    destActivo boolean not null default(1)
);