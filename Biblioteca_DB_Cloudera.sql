---------------------------------------------
    PASO 0 Limpiar
---------------------------------------------

DROP DATABASE IF EXISTS BibliotecaBD CASCADE;

hdfs dfs -rm -r /user/Cloudera/ProyectoBD

---------------------------------------------
    PASO 1
---------------------------------------------

hdfs dfs -mkdir /user/cloudera/ProyectoBD
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD


-- CARPETA cloudera_landing_tmp

hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp

hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/contenido
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/contribuyente
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/credencialesusuarios
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/ejemplar
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/escuela
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/estado
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/examen_profesional
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/facultad
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/idioma
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/informe_practica
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/institucion
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/libro
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/login
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/material_bibliografico
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/material_mas_demandado
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/mostrarfacultad
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/pais
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/participacion
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/prestamo
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/prestamos_concluidos
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/prestamos_pendientes
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/report_error
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/rol
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/solicitud
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/solicitudes_pendientes
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/tema
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/tesis
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/tipo_documento
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/tipo_material
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/tipo_usuario
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/trabajo_investigacion
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/usuario


-- CARPETA cloudera_landing

hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing

hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/contenido
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/contribuyente
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/credencialesusuarios
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/ejemplar
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/escuela
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/estado
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/examen_profesional
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/facultad
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/idioma
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/informe_practica
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/institucion
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/libro
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/login
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/material_bibliografico
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/material_mas_demandado
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/mostrarfacultad
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/pais
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/participacion
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/prestamo
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/prestamos_concluidos
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/prestamos_pendientes
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/report_error
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/rol
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/solicitud
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/solicitudes_pendientes
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/tema
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/tesis
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/tipo_documento
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/tipo_material
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/tipo_usuario
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/trabajo_investigacion
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing/usuario


-- CARPETA cloudera_landing

hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal

hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/contenido
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/contribuyente
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/credencialesusuarios
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/ejemplar
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/escuela
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/estado
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/examen_profesional
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/facultad
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/idioma
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/informe_practica
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/institucion
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/libro
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/login
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/material_bibliografico
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/material_mas_demandado
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/mostrarfacultad
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/pais
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/participacion
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/prestamo
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/prestamos_concluidos
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/prestamos_pendientes
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/report_error
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/rol
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/solicitud
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/solicitudes_pendientes
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/tema
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/tesis
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/tipo_documento
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/tipo_material
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/tipo_usuario
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/trabajo_investigacion
hdfs dfs -mkdir /user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal/usuario



---------------------------------------------
    PASO 2
---------------------------------------------

hive

-- En la consola de HIVE, adaptar y ejecutar:

DROP DATABASE IF EXISTS cloudera_LANDING_TMP CASCADE;
DROP DATABASE IF EXISTS cloudera_LANDING CASCADE;
DROP DATABASE IF EXISTS cloudera_UNIVERSAL CASCADE;
DROP DATABASE IF EXISTS cloudera_SMART CASCADE;


CREATE DATABASE IF NOT EXISTS cloudera_LANDING_TMP LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp';
CREATE DATABASE IF NOT EXISTS cloudera_LANDING LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing';
CREATE DATABASE IF NOT EXISTS cloudera_UNIVERSAL LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_universal';
CREATE DATABASE IF NOT EXISTS cloudera_SMART LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_smart';

---------------------------------------------
    PASO 3
---------------------------------------------

USE cloudera_LANDING_TMP;

-- Creación de la tabla Tipo_Usuario
CREATE TABLE IF NOT EXISTS Tipo_Usuario (
    idTipoUsuario TINYINT,
    nombreTipo STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/tipo_usuario';


-- Creación de la tabla Facultad
CREATE TABLE IF NOT EXISTS Facultad (
    idFacultad TINYINT,
    nombreFacultad STRING,
    abreviacionFacultad STRING,
    visibFacultad BOOLEAN
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/facultad';

-- Creación de la tabla Escuela
CREATE TABLE IF NOT EXISTS Escuela (
    idEscuela TINYINT,
    nombreEscuela STRING,
    abreviacionEscuela STRING,
    idFacultad TINYINT,
    visibEscuela BOOLEAN
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/escuela';

-- Creación de la tabla Pais
CREATE TABLE IF NOT EXISTS Pais (
    idPais TINYINT,
    nombrePais STRING,
    abrevISOPais STRING,
    visibPais BOOLEAN
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/pais';

-- Creación de la tabla Tipo_Documento
CREATE TABLE IF NOT EXISTS Tipo_Documento (
    idTipoDocumento TINYINT,
    nombreTipoDocumento STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/tipo_documento';

-- Creación de la tabla Usuario
CREATE TABLE IF NOT EXISTS Usuario (
    idUsuario INT,
    nombres STRING,
    apePaterno STRING,
    apeMaterno STRING,
    direccion STRING,
    fechaNacimiento DATE,
    telefono STRING,
    documentoIdentidad STRING,
    email STRING,
    sexo BOOLEAN,
    visibUsuario BOOLEAN,
    idTipoUsuario TINYINT,
    idEscuela TINYINT,
    idPais TINYINT,
    idTipoDocumento TINYINT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/usuario';

-- Creación de la tabla Login
CREATE TABLE IF NOT EXISTS Login (
    idLogin INT,
    codigoUsuario STRING,
    password STRING,
    idUsuario INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/login';

-- Creación de la tabla Idioma
CREATE TABLE IF NOT EXISTS Idioma (
    idIdioma TINYINT,
    nombreIdioma STRING,
    abrevISOIdioma STRING,
    visibIdioma BOOLEAN
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/idioma';

-- Creación de la tabla Tipo_Material
CREATE TABLE IF NOT EXISTS Tipo_Material (
    idTipo TINYINT,
    nombre STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/tipo_material';

-- Creación de la tabla Material_Bibliografico
CREATE TABLE IF NOT EXISTS Material_Bibliografico (
    idMaterial INT,
    anioPublicacion SMALLINT,
    mes TINYINT,
    dia TINYINT,
    titulo STRING,
    cantidadPaginas SMALLINT,
    cantidadCDs TINYINT,
    cantidadEjemplares SMALLINT,
    idIdioma TINYINT,
    idTipo TINYINT,
    idEscuela TINYINT,
    visibMB BOOLEAN
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/material_bibliografico';

-- Creación de la tabla Estado
CREATE TABLE IF NOT EXISTS Estado (
    idEstado TINYINT,
    nombreEstado STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/estado';

-- Creación de la tabla Ejemplar
CREATE TABLE IF NOT EXISTS Ejemplar (
    idEjemplar INT,
    disponibilidad BOOLEAN,
    idMaterial INT,
    idEstado TINYINT,
    visibEjemplar BOOLEAN
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/ejemplar';

-- Creación de la tabla Solicitud
CREATE TABLE IF NOT EXISTS Solicitud (
    idSolicitud INT,
    fechaSolicitud TIMESTAMP,
    fechaDevolucionEstimada TIMESTAMP,
    estadoSolicitud BOOLEAN,
    idUsuario INT,
    idEjemplar INT,
    visibSolicitud BOOLEAN
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/solicitud';

-- Creación de la tabla Prestamo
CREATE TABLE IF NOT EXISTS Prestamo (
    idPrestamo INT,
    fechaPrestamo TIMESTAMP,
    fechaDevolucion TIMESTAMP,
    estadoPrestamo BOOLEAN,
    idSolicitud INT,
    idUsuario INT,
    visibPrestamo BOOLEAN
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/prestamo';

-- Creación de la tabla Libro
CREATE TABLE IF NOT EXISTS Libro (
    idLibro INT,
    idMaterial INT,
    isbn10 STRING,
    isbn13 STRING,
    editorial STRING,
    edicion TINYINT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/libro';

-- Creación de la tabla Tesis
CREATE TABLE IF NOT EXISTS Tesis (
    idTesis INT,
    idMaterial INT,
    resumen STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/tesis';

-- Creación de la tabla Examen_Profesional
CREATE TABLE IF NOT EXISTS Examen_Profesional (
    idExamenProfesional INT,
    idMaterial INT,
    fechaExamen TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/examen_profesional';

-- Creación de la tabla Institucion
CREATE TABLE IF NOT EXISTS Institucion (
    idInstitucion INT,
    nombreInstitucion STRING,
    codigoIdentificacion STRING,
    idPais TINYINT,
    visibInstit BOOLEAN
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/institucion';

-- Creación de la tabla Trabajo_Investigacion
CREATE TABLE IF NOT EXISTS Trabajo_Investigacion (
    IdTrabajoInvestigacion INT,
    idMaterial INT,
    URI STRING,
    idInstitucion INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/trabajo_investigacion';

-- Creación de la tabla Informe_Practica
CREATE TABLE IF NOT EXISTS Informe_Practica (
    idInformePractica INT,
    idMaterial INT,
    idInstitucion INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/informe_practica';

-- Creación de la tabla Tema
CREATE TABLE IF NOT EXISTS Tema (
    idTema BIGINT,
    nombreTema STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/tema';

-- Creación de la tabla Contenido
CREATE TABLE IF NOT EXISTS Contenido (
    idMaterial INT,
    idTema BIGINT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/contenido';

-- Creación de la tabla Report_Error
CREATE TABLE IF NOT EXISTS Report_Error (
    idReportError INT,
    errorCode INT,
    errorMessage STRING,
    errorTime TIMESTAMP,
    visibError BOOLEAN
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/report_error';

-- Creación de la tabla Rol
CREATE TABLE IF NOT EXISTS Rol (
    idRol TINYINT,
    nombreRol STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/rol';

-- Creación de la tabla Contribuyente
CREATE TABLE IF NOT EXISTS Contribuyente (
    idContribuyente INT,
    nombres STRING,
    apellidos STRING,
    sexo BOOLEAN,
    idEscuela TINYINT,
    idPais TINYINT,
    visibContribuyente BOOLEAN
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/contribuyente';

-- Creación de la tabla Participacion
CREATE TABLE IF NOT EXISTS Participacion (
    idParticipacion INT,
    idMaterial INT,
    idContribuyente INT,
    idRol TINYINT,
    idInstitucion INT,
    tipoParticipante BOOLEAN
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/BibliotecaBD/cloudera_landing_tmp/participacion';


-- INSERTAR DATOS CON ARCHIVOS CSV

#En la consola HADOOP, primera forma usando put
hdfs dfs -put ~/dataset/tipo_usuario.csv /ProyectoBD/BibliotecaBD/cloudera_landing_tmp/tipo_usuario

-- continuara

#la otra forma es usando HIVE
LOAD DATA LOCAL INPATH '/home/cloudera/dataset/tipo_usuario.csv'
INTO TABLE cloudera_LANDING_TMP.Tipo_Usuario;

-- continuara

---------------------------------------------
    PASO 4
---------------------------------------------


Continuara . . .