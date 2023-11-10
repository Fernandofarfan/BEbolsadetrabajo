create table category
(
    id   int not null auto_increment primary key,
    name varchar(255)
);

create table place
(
    id   int not null auto_increment primary key,
    name varchar(255)
);

create table job
(
    id           int not null auto_increment primary key,
    name         varchar(255),
    description  varchar(511),
    requirements varchar(511),
    limit_at     date,
    created_at   datetime,
    status       int,
    category_id  int not null,
    foreign key (category_id) references category (id),
    place_id     int not null,
    foreign key (place_id) references place (id)
);


create table person
(
    id         int not null auto_increment primary key,
    name       varchar(255),
    lastname   varchar(255),
    file       varchar(255),
    phone      varchar(255),
    email      varchar(255),
    job_id     int not null,
    created_at datetime,
    status     int default 1,
    foreign key (job_id) references job (id)
);



create table user
(
    id         int not null auto_increment primary key,
    name       varchar(50),
    lastname   varchar(50),
    username   varchar(50),
    email      varchar(255),
    password   varchar(60),
    image      varchar(255),
    status     int default 1,
    kind       int default 1,
    created_at datetime
);

insert into user (name, username, password, kind, created_at) value ('Administrator', 'admin', sha1(md5('admin')), 1, NOW());

# Creación de Categorías

INSERT INTO category (name)
VALUES ('Technology');
INSERT INTO category (name)
VALUES ('Food');
INSERT INTO category (name)
VALUES ('Healthcare');
INSERT INTO category (name)
VALUES ('Education');
INSERT INTO category (name)
VALUES ('Entertainment');

# Creación de Lugares

INSERT INTO place (name)
VALUES ('Office Building');
INSERT INTO place (name)
VALUES ('City Park');
INSERT INTO place (name)
VALUES ('Shopping Mall');
INSERT INTO place (name)
VALUES ('Café');
INSERT INTO place (name)
VALUES ('Beach');
INSERT INTO place (name)
VALUES ('Office A');
INSERT INTO place (name)
VALUES ('Remote');
INSERT INTO place (name)
VALUES ('City Center');
INSERT INTO place (name)
VALUES ('Branch B');
INSERT INTO place (name)
VALUES ('Home Office');

# Creación de Trabajos

INSERT INTO job (name, description, requirements, limit_at, created_at, status, category_id, place_id)
VALUES ('Desarrollador Web', 'Desarrollo y mantenimiento de sitios web.', 'Experiencia en HTML, CSS, y JavaScript.',
        '2023-12-15', '2023-11-01 09:00:00', 1, 1, 2),
       ('Analista de Datos', 'Análisis de datos y generación de informes.',
        'Conocimiento en SQL y herramientas de análisis de datos.', '2023-12-20', '2023-11-02 10:30:00', 1, 2, 3),
       ('Diseñador Gráfico', 'Creación de materiales gráficos y diseño de interfaces.',
        'Experiencia en Adobe Creative Suite.', '2023-12-18', '2023-11-03 11:45:00', 1, 3, 1),
       ('Especialista en Marketing Digital', 'Desarrollo de estrategias de marketing en línea.',
        'Conocimientos en SEO, SEM y redes sociales.', '2023-12-22', '2023-11-04 14:00:00', 1, 4, 4),
       ('Ingeniero de Sistemas', 'Diseño e implementación de sistemas informáticos.',
        'Experiencia en desarrollo de software y gestión de bases de datos.', '2023-12-17', '2023-11-05 15:15:00', 1, 5,
        5),
       ('Asistente Administrativo', 'Apoyo en tareas administrativas y atención al cliente.',
        'Conocimientos en Microsoft Office y habilidades organizativas.', '2023-12-19', '2023-11-06 16:30:00', 1, 1, 2),
       ('Chef de Cocina', 'Preparación y presentación de platos en un restaurante.',
        'Experiencia en cocina internacional y habilidades culinarias.', '2023-12-21', '2023-11-07 17:45:00', 0, 2, 3),
       ('Instructor de Fitness', 'Impartir clases de fitness y asesorar en entrenamientos.',
        'Certificación en entrenamiento personal y conocimientos en anatomía.', '2023-12-16', '2023-11-08 19:00:00', 1,
        3, 4),
       ('Especialista en Recursos Humanos', 'Gestión de procesos de selección y desarrollo de personal.',
        'Experiencia en reclutamiento y conocimientos en legislación laboral.', '2023-12-23', '2023-11-09 20:15:00', 1,
        4, 5),
       ('Traductor Freelance', 'Traducción de documentos en diversos idiomas.',
        'Dominio de al menos dos idiomas y experiencia en traducción.', '2023-12-14', '2023-11-10 21:30:00', 1, 5, 1),
       ('Desarrollador iOS', 'Desarrollo de aplicaciones para dispositivos iOS.',
        'Experiencia en Swift y conocimientos de diseño de interfaz.', '2023-12-15', '2023-11-01 09:00:00', 1, 1, 2),
       ('Analista Financiero', 'Análisis de datos financieros y elaboración de informes.',
        'Conocimiento en contabilidad y herramientas financieras.', '2023-12-20', '2023-11-02 10:30:00', 1, 2, 3),
       ('Diseñador UX/UI', 'Creación de experiencias de usuario y diseño de interfaces.',
        'Experiencia en herramientas de diseño y comprensión de la psicología del usuario.', '2023-12-18',
        '2023-11-03 11:45:00', 1, 3, 4),
       ('Especialista en Redes Sociales', 'Gestión de cuentas y estrategias en redes sociales.',
        'Conocimientos en marketing digital y habilidades creativas.', '2023-12-22', '2023-11-04 14:00:00', 1, 4, 5),
       ('Ingeniero de Seguridad Informática', 'Implementación de medidas de seguridad en sistemas informáticos.',
        'Experiencia en ciberseguridad y certificaciones relevantes.', '2023-12-17', '2023-11-05 15:15:00', 1, 5, 6),
       ('Asistente de Recursos Humanos', 'Apoyo en procesos de selección y gestión de personal.',
        'Conocimientos en administración de recursos humanos y habilidades de comunicación.', '2023-12-19',
        '2023-11-06 16:30:00', 1, 1, 7),
       ('Chef Ejecutivo', 'Planificación de menús y supervisión de la cocina.',
        'Experiencia en alta cocina y habilidades de liderazgo.', '2023-12-21', '2023-11-07 17:45:00', 1, 2, 8),
       ('Entrenador Personal', 'Desarrollo de programas de entrenamiento personalizado.',
        'Certificación en entrenamiento personal y experiencia en asesoramiento fitness.', '2023-12-16',
        '2023-11-08 19:00:00', 1, 3, 9),
       ('Especialista en Nóminas', 'Gestión de nóminas y procesos de compensación.',
        'Experiencia en legislación laboral y conocimientos en software de nóminas.', '2023-12-23',
        '2023-11-09 20:15:00', 1, 4, 10),
       ('Traductor de Documentos Legales', 'Traducción de documentos legales y contratos.',
        'Dominio de lenguaje jurídico y experiencia en traducción legal.', '2023-12-14', '2023-11-10 21:30:00', 1, 5,
        1),
       ('Analista de Marketing', 'Desarrollo de estrategias de marketing y análisis de mercado.',
        'Experiencia en marketing digital y habilidades analíticas.', '2023-12-15', '2023-11-01 09:00:00', 1, 4, 1),
       ('Desarrollador Full Stack', 'Desarrollo de aplicaciones web desde el frontend hasta el backend.',
        'Conocimiento en HTML, CSS, JavaScript, y frameworks backend.', '2023-12-20', '2023-11-02 10:30:00', 1, 1, 3),
       ('Gerente de Proyectos', 'Planificación y supervisión de proyectos.',
        'Experiencia en gestión de proyectos y habilidades de liderazgo.', '2023-12-18', '2023-11-03 11:45:00', 1, 2,
        5),
       ('Editor de Contenidos', 'Revisión y edición de contenido para publicaciones en línea.',
        'Excelentes habilidades de redacción y conocimientos en SEO.', '2023-12-22', '2023-11-04 14:00:00', 1, 3, 7),
       ('Ingeniero Eléctrico', 'Diseño y mantenimiento de sistemas eléctricos.',
        'Experiencia en ingeniería eléctrica y conocimientos en normativas.', '2023-12-17', '2023-11-05 15:15:00', 1, 5,
        8),
       ('Asistente de Ventas', 'Apoyo en actividades de ventas y atención al cliente.',
        'Habilidades de comunicación y orientación al cliente.', '2023-12-19', '2023-11-06 16:30:00', 1, 1, 2),
       ('Chef Pastelero', 'Elaboración de pasteles y postres en una pastelería.',
        'Experiencia en repostería y creatividad culinaria.', '2023-12-21', '2023-11-07 17:45:00', 1, 2, 4),
       ('Entrenador de Yoga', 'Impartir clases de yoga y guiar a los participantes en la práctica.',
        'Certificación en instrucción de yoga y habilidades de comunicación.', '2023-12-16', '2023-11-08 19:00:00', 1,
        3, 6),
       ('Especialista en Compensaciones', 'Gestión de programas de compensación y beneficios para empleados.',
        'Experiencia en recursos humanos y conocimientos en compensación.', '2023-12-23', '2023-11-09 20:15:00', 1, 4,
        9),
       ('Traductor de Novelas', 'Traducción de novelas y obras literarias.',
        'Dominio de idiomas y apreciación por la literatura.', '2023-12-14', '2023-11-10 21:30:00', 1, 5, 10);
