x   ---------------------------------------------
    PASO 1
---------------------------------------------

hdfs dfs -mkdir /user/cloudera/ProyectoBD
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD

hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/

hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/AreaAcademica
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/Comunicacion
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/DatosPersonales
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/DocenteDocumentoAcad
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/DocumentoAcad
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/Estado
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/Grado
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/Grado_has_Mencion
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/HistorialDocumentos
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/Historial_Comunicacion
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/Mencion
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/Requisito_has_Tramite
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/Respuesta
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/Rol
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/RolDocente
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/TipoTramite
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/Titulo
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/Tramite
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/Userlogin
hdfs dfs -mkdir /user/cloudera/ProyectoBD/TramiteTesisBD/Usuario

---------------------------------------------
    PASO 2
---------------------------------------------

DROP DATABASE IF EXISTS TramiteTesiBD CASCADE;

CREATE DATABASE IF NOT EXISTS TramiteTesiBD LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD';

---------------------------------------------
    PASO 3
---------------------------------------------

USE TramiteTesiBD;

-- Creación de la tabla AreaAcademica
CREATE TABLE IF NOT EXISTS AreaAcademica (
idAreaAcademica int,
idUsuario int,
nombreArea string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/AreaAcademica';

-- Creación de la tabla Comunicacion
CREATE TABLE IF NOT EXISTS Comunicacion (
idComunicacion int,
asunto string,
idTramite int, 
idEstado int, 
idRespuesta int, 
idUserlogin int, 
fechaComunicacion date,
observaciones string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/Comunicacion';

-- Creación de la tabla DatosPersonales
CREATE TABLE IF NOT EXISTS DatosPersonales (
DNI string,
codigo string, 
nombres string, 
apellidos string, 
correo string, 
celular string, 
sexo string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/DatosPersonales';

-- Creación de la tabla DocenteDocumentoAcad
CREATE TABLE IF NOT EXISTS DocenteDocumentoAcad (
idDocenteDocumentoAcad int, 
idDocumentoAcad int, 
idRolDocente int, 
idUsuario int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/DocenteDocumentoAcad';

-- Creación de la tabla DocumentoAcad
CREATE TABLE IF NOT EXISTS DocumentoAcad (
idDocumentoAcad int, 
Titulo string,
nota int,
pathDocumento string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/DocumentoAcad';

-- Creación de la tabla Estado
CREATE TABLE IF NOT EXISTS Estado (
idEstado int, 
nombreEstado string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/Estado';

-- Creación de la tabla Grado
CREATE TABLE IF NOT EXISTS Grado (
idGrado int, 
nombreGrado string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/Grado';

-- Creación de la tabla Grado_has_Mencion
CREATE TABLE IF NOT EXISTS Grado_has_Mencion (
id_gradoMencion int,
Grado_idGrado int, 
Mencion_idMenciongrado int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/Grado_has_Mencion';

-- Creación de la tabla HistorialDocumentos
CREATE TABLE IF NOT EXISTS HistorialDocumentos (
idHistorialDocumentos INT,
idDocumentoAcad INT,
nota int,
pathDocumento string, 
fechaRegistroHistorial date
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/HistorialDocumentos';

-- Creación de la tabla Historial_Comunicacion
CREATE TABLE IF NOT EXISTS Historial_Comunicacion (
idHistorial_Comunicacion int, 
idComunicacion int,
asunto string, 
idTramite int, 
idEstado int, 
idRespuesta int, 
fechaComunicacion date,
observaciones varchar
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/Historial_Comunicacion';

-- Creación de la tabla Mencion
CREATE TABLE IF NOT EXISTS Mencion (
idMenciongrado int,
nombreMencion string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/Mencion';

-- Creación de la tabla Requisito_has_Tramite
CREATE TABLE IF NOT EXISTS Requisito_has_Tramite (
Requisito_idRequisito int, 
Requisito_idArchivo int, 
Tramite_idTramite int, 
Tramite_idTipoTramite int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/Requisito_has_Tramite';

-- Creación de la tabla Respuesta
CREATE TABLE IF NOT EXISTS Respuesta (
idRespuesta int,
nombreRespuesta string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/Respuesta';

-- Creación de la tabla Rol
CREATE TABLE IF NOT EXISTS Rol (
idRol int, 
nombreRol string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/Rol';

-- Creación de la tabla RolDocente
CREATE TABLE IF NOT EXISTS RolDocente (
idRolDocente int, 
nombreRol string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/RolDocente';

-- Creación de la tabla TipoTramite
CREATE TABLE IF NOT EXISTS TipoTramite (
idTipoTramite int, 
nombreTramite string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/TipoTramite';

-- Creación de la tabla Titulo
CREATE TABLE IF NOT EXISTS Titulo (
idTitulo int, 
nombreTitulo string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/Titulo';

-- Creación de la tabla Tramite
CREATE TABLE IF NOT EXISTS Tramite (
idTramite int,
idTipoTramite int,
idDocumentoAcad int,
fechaRegistro date
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/Tramite';

-- Creación de la tabla Userlogin
CREATE TABLE IF NOT EXISTS Userlogin (
idUserlogin int, 
usuario string,
contra string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/Userlogin';

-- Creación de la tabla Usuario
CREATE TABLE IF NOT EXISTS Usuario (
idUsuario int,
Rol_idRol int,
DatosPersonales_DNI string, 
id_gradoMencion int,
idTitulo int,
idUserlogin int,
Estado string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/cloudera/ProyectoBD/TramiteTesisBD/Usuario';


PASO 3:

# Copiar archivos CSV a HDFS para cada tabla
hdfs dfs -put ~/dataset/AreaAcademica.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/AreaAcademica
hdfs dfs -put ~/dataset/Comunicacion.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Comunicacion
hdfs dfs -put ~/dataset/DatosPersonales.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/DatosPersonales
hdfs dfs -put ~/dataset/DocenteDocumentoAcad.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/DocenteDocumentoAcad
hdfs dfs -put ~/dataset/DocumentoAcad.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/DocumentoAcad
hdfs dfs -put ~/dataset/Estado.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Estado
hdfs dfs -put ~/dataset/Grado.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Grado
hdfs dfs -put ~/dataset/Grado_has_Mencion.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Grado_has_Mencion
hdfs dfs -put ~/dataset/HistorialDocumentos.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/HistorialDocumentos
hdfs dfs -put ~/dataset/Historial_Comunicacion.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Historial_Comunicacion
hdfs dfs -put ~/dataset/Mencion.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Mencion
hdfs dfs -put ~/dataset/Requisito_has_Tramite.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Requisito_has_Tramite
hdfs dfs -put ~/dataset/Respuesta.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Respuesta
hdfs dfs -put ~/dataset/Rol.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Rol
hdfs dfs -put ~/dataset/RolDocente.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/RolDocente
hdfs dfs -put ~/dataset/TipoTramite.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/TipoTramite
hdfs dfs -put ~/dataset/Titulo.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Titulo
hdfs dfs -put ~/dataset/Tramite.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Tramite
hdfs dfs -put ~/dataset/Userlogin.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Userlogin
hdfs dfs -put ~/dataset/Usuario.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Usuario
hdfs dfs -put ~/dataset/datosPesonalesUsuarios.csv /user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/datosPesonalesUsuarios

# Cargar datos desde archivos CSV a las tablas en Hive
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/AreaAcademica/AreaAcademica.csv' INTO TABLE cloudera_LANDING_TMP.AreaAcademica;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Comunicacion/Comunicacion.csv' INTO TABLE cloudera_LANDING_TMP.Comunicacion;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/DatosPersonales/DatosPersonales.csv' INTO TABLE cloudera_LANDING_TMP.DatosPersonales;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/DocenteDocumentoAcad/DocenteDocumentoAcad.csv' INTO TABLE cloudera_LANDING_TMP.DocenteDocumentoAcad;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/DocumentoAcad/DocumentoAcad.csv' INTO TABLE cloudera_LANDING_TMP.DocumentoAcad;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Estado/Estado.csv' INTO TABLE cloudera_LANDING_TMP.Estado;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Grado/Grado.csv' INTO TABLE cloudera_LANDING_TMP.Grado;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Grado_has_Mencion/Grado_has_Mencion.csv' INTO TABLE cloudera_LANDING_TMP.Grado_has_Mencion;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/HistorialDocumentos/HistorialDocumentos.csv' INTO TABLE cloudera_LANDING_TMP.HistorialDocumentos;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Historial_Comunicacion/Historial_Comunicacion.csv' INTO TABLE cloudera_LANDING_TMP.Historial_Comunicacion;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Mencion/Mencion.csv' INTO TABLE cloudera_LANDING_TMP.Mencion;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Requisito_has_Tramite/Requisito_has_Tramite.csv' INTO TABLE cloudera_LANDING_TMP.Requisito_has_Tramite;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Respuesta/Respuesta.csv' INTO TABLE cloudera_LANDING_TMP.Respuesta;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Rol/Rol.csv' INTO TABLE cloudera_LANDING_TMP.Rol;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/RolDocente/RolDocente.csv' INTO TABLE cloudera_LANDING_TMP.RolDocente;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/TipoTramite/TipoTramite.csv' INTO TABLE cloudera_LANDING_TMP.TipoTramite;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Titulo/Titulo.csv' INTO TABLE cloudera_LANDING_TMP.Titulo;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Tramite/Tramite.csv' INTO TABLE cloudera_LANDING_TMP.Tramite;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Userlogin/Userlogin.csv' INTO TABLE cloudera_LANDING_TMP.Userlogin;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/Usuario/Usuario.csv' INTO TABLE cloudera_LANDING_TMP.Usuario;
LOAD DATA INPATH '/user/cloudera/ProyectoBD/TramiteTesisBD/cloudera_landing_tmp/datosPesonalesUsuarios/datosPesonalesUsuarios.csv' INTO TABLE cloudera_LANDING_TMP.datosPesonalesUsuarios;


PASO 4:
hdfs dfs -put /home/cloudera/Usuario.txt /user/cloudera/ProyectoBD/schema/database/cloudera_landing
hdfs dfs -put /home/cloudera/DatosPersonales.txt /user/cloudera/ProyectoBD/schema/database/cloudera_landing
 
CREATE TABLE cloudera_LANDING.Usuario
STORED AS AVRO
LOCATION '/user/cloudera/ProyectoBD/database/cloudera_landing/Usuario'
TBLPROPERTIES (
'avro.schema.url'='hdfs:///user/cloudera/ProyectoBD/schema/database/cloudera_landing/Usuario.txt',
'avro.output.codec'='snappy'
);

CREATE TABLE cloudera_LANDING.DatosPersonales
STORED AS AVRO
LOCATION '/user/cloudera/ProyectoBD/database/cloudera_landing/DatosPersonales'
TBLPROPERTIES (
'avro.schema.url'='hdfs:///user/cloudera/ProyectoBD/schema/database/cloudera_landing/DatosPersonales.txt',
'avro.output.codec'='snappy'
);


SET hive.exec.compress.output=true;
SET avro.output.codec=snappy;

INSERT OVERWRITE TABLE cloudera_LANDING.Usuario
SELECT * FROM  cloudera_LANDING_TMP.Usuario;

INSERT OVERWRITE TABLE cloudera_LANDING.DatosPersonales
SELECT * FROM  cloudera_LANDING_TMP.DatosPersonales;



PASO 5:

CREATE TABLE cloudera_UNIVERSAL.DatosPersonales (
    > DNI STRING,
    > codigo STRING,
    > nombres STRING,
    > apellidos STRING,
    > correo STRING,
    > celular STRING,
    > sexo STRING
    > )
    >
    > STORED AS PARQUET
    > LOCATION '/user/cloudera/ejercicio2/database/cloudera_universal/DatosPersonales'

SET hive.exec.compress.output=true;
hive> SET parquet.compression=SNAPPY;
hive>
    > INSERT OVERWRITE TABLE cloudera_UNIVERSAL.DatosPersonales
    > SELECT
    > cast(DNI AS STRING),
    > cast(codigo AS STRING),
    > cast(nombres AS STRING),
    > cast(apellidos AS STRING),
    > cast(correo AS STRING),
    > cast(celular AS STRING),
    > cast(sexo AS STRING),
    > FROM cloudera_LANDING.DatosPersonales
    > WHERE DNI != 'DNI';


SET hive.exec.compress.output=true;
hive> SET parquet.compression=SNAPPY;
hive> INSERT OVERWRITE TABLE cloudera_UNIVERSAL.Usuario
    > SELECT
    > cast(idUsuario AS INT),
    > cast(Rol_idRol AS INT),
    > cast(DatosPersonales AS STRING),
    > cast(id_gradoMencion AS INT),
    > cast(id_Titulo AS INT),
    > cast(Estado AS STRING)
    > from cloudera_landing.Usuario
    > WHERE idUsuario != 'idUsuario';    > TBLPROPERTIES ("parquet.compression"="SNAPPY");


INSERT OVERWRITE TABLE cloudera_UNIVERSAL.Usuario
    > SELECT
    > cast(idUsuario AS INT),
    > cast(Rol_idRol AS INT),
    > cast(DatosPersonales AS STRING),
    > cast(id_gradoMencion AS INT),
    > cast(id_Titulo AS INT),
    > cast(Estado AS STRING)
    > from cloudera_landing.Usuario
    > WHERE idUsuario != 'idUsuario';


