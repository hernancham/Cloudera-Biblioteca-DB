-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Tipo_Usuario`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Tipo_Usuario` (
        `idTipoUsuario` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
        `nombreTipo` VARCHAR(30) NOT NULL,
        PRIMARY KEY (`idTipoUsuario`),
        UNIQUE INDEX `idTipoUsuario_UNIQUE` (`idTipoUsuario` ASC) VISIBLE,
        UNIQUE INDEX `nombreTipo_UNIQUE` (`nombreTipo` ASC) VISIBLE
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Facultad`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Facultad` (
        `idFacultad` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
        `nombreFacultad` VARCHAR(80) NOT NULL,
        `abreviacionFacultad` VARCHAR(8) NOT NULL,
        `visibFacultad` BIT NOT NULL DEFAULT b '1',
        PRIMARY KEY (`idFacultad`),
        UNIQUE INDEX `idFacultad_UNIQUE` (`idFacultad` ASC) VISIBLE
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Escuela`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Escuela` (
        `idEscuela` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
        `nombreEscuela` VARCHAR(80) NOT NULL,
        `abreviacionEscuela` VARCHAR(8) NOT NULL,
        `idFacultad` TINYINT UNSIGNED NOT NULL,
        `visibEscuela` BIT NOT NULL DEFAULT b '1',
        PRIMARY KEY (`idEscuela`),
        UNIQUE INDEX `idEscuela_UNIQUE` (`idEscuela` ASC) VISIBLE,
        INDEX `fk_Escuela_Facultad1_idx` (`idFacultad` ASC) VISIBLE,
        CONSTRAINT `fk_Escuela_Facultad1` FOREIGN KEY (`idFacultad`) REFERENCES `BibliotecaBD`.`Facultad` (`idFacultad`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Pais`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Pais` (
        `idPais` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
        `nombrePais` VARCHAR(35) NOT NULL,
        `abrevISOPais` VARCHAR(2) NOT NULL,
        `visibPais` BIT NOT NULL DEFAULT b '1',
        PRIMARY KEY (`idPais`),
        UNIQUE INDEX `idPais_UNIQUE` (`idPais` ASC) VISIBLE
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Tipo_Documento`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Tipo_Documento` (
        `idTipoDocumento` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
        `nombreTipoDocumento` VARCHAR(30) NOT NULL,
        PRIMARY KEY (`idTipoDocumento`)
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Usuario` (
        `idUsuario` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `nombres` VARCHAR(60) NOT NULL,
        `apePaterno` VARCHAR(30) NOT NULL,
        `apeMaterno` VARCHAR(30) NOT NULL,
        `direccion` VARCHAR(80) NOT NULL,
        `fechaNacimiento` DATE NOT NULL,
        `telefono` VARCHAR(12) NOT NULL,
        `documentoIdentidad` VARCHAR(12) NOT NULL,
        `email` VARCHAR(40) NOT NULL,
        `sexo` BIT NOT NULL,
        `visibUsuario` BIT NOT NULL DEFAULT b '1',
        `idTipoUsuario` TINYINT UNSIGNED NOT NULL,
        `idEscuela` TINYINT UNSIGNED NULL DEFAULT NULL,
        `idPais` TINYINT UNSIGNED NULL DEFAULT NULL,
        `idTipoDocumento` TINYINT UNSIGNED NOT NULL,
        PRIMARY KEY (`idUsuario`),
        INDEX `fk_Usuario_TipoUsuario_idx` (`idTipoUsuario` ASC) VISIBLE,
        INDEX `fk_Usuario_Escuela1_idx` (`idEscuela` ASC) VISIBLE,
        INDEX `fk_Usuario_Pais1_idx` (`idPais` ASC) VISIBLE,
        UNIQUE INDEX `documentoIdentidad_UNIQUE` (`documentoIdentidad` ASC) VISIBLE,
        INDEX `fk_Usuario_Tipo_Documento1_idx` (`idTipoDocumento` ASC) VISIBLE,
        UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
        UNIQUE INDEX `telefono_UNIQUE` (`telefono` ASC) VISIBLE,
        CONSTRAINT `fk_Usuario_TipoUsuario` FOREIGN KEY (`idTipoUsuario`) REFERENCES `BibliotecaBD`.`Tipo_Usuario` (`idTipoUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `fk_Usuario_Escuela1` FOREIGN KEY (`idEscuela`) REFERENCES `BibliotecaBD`.`Escuela` (`idEscuela`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `fk_Usuario_Pais1` FOREIGN KEY (`idPais`) REFERENCES `BibliotecaBD`.`Pais` (`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `fk_Usuario_Tipo_Documento1` FOREIGN KEY (`idTipoDocumento`) REFERENCES `BibliotecaBD`.`Tipo_Documento` (`idTipoDocumento`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Login`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Login` (
        `idLogin` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `codigoUsuario` VARCHAR(15) NOT NULL,
        `password` VARCHAR(35) NOT NULL,
        `idUsuario` INT UNSIGNED NULL,
        PRIMARY KEY (`idLogin`),
        UNIQUE INDEX `nombreUsuario_UNIQUE` (`codigoUsuario` ASC) VISIBLE,
        INDEX `fk_Login_Usuario1_idx` (`idUsuario` ASC) VISIBLE,
        CONSTRAINT `fk_Login_Usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `BibliotecaBD`.`Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Idioma`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Idioma` (
        `idIdioma` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
        `nombreIdioma` VARCHAR(35) NOT NULL,
        `abrevISOIdioma` VARCHAR(2) NOT NULL,
        `visibIdioma` BIT NOT NULL DEFAULT b '1',
        PRIMARY KEY (`idIdioma`)
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Tipo_Material`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Tipo_Material` (
        `idTipo` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
        `nombre` VARCHAR(25) NOT NULL,
        PRIMARY KEY (`idTipo`)
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Material_Bibliografico`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Material_Bibliografico` (
        `idMaterial` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `anioPublicacion` SMALLINT UNSIGNED NOT NULL,
        `mes` TINYINT UNSIGNED NULL DEFAULT NULL,
        `dia` TINYINT UNSIGNED NULL DEFAULT NULL,
        `titulo` VARCHAR(300) NOT NULL,
        `cantidadPaginas` SMALLINT UNSIGNED NULL DEFAULT NULL,
        `cantidadCDs` TINYINT UNSIGNED NULL DEFAULT NULL,
        `cantidadEjemplares` SMALLINT UNSIGNED NOT NULL,
        `idIdioma` TINYINT UNSIGNED NOT NULL,
        `idTipo` TINYINT UNSIGNED NOT NULL,
        `idEscuela` TINYINT UNSIGNED NOT NULL,
        `visibMB` BIT NOT NULL DEFAULT b '1',
        PRIMARY KEY (`idMaterial`),
        INDEX `fk_Material_Bibliografico_Idioma1_idx` (`idIdioma` ASC) VISIBLE,
        INDEX `fk_Material_Bibliografico_Tipo_Material1_idx` (`idTipo` ASC) VISIBLE,
        INDEX `fk_Material_Bibliografico_Escuela1_idx` (`idEscuela` ASC) VISIBLE,
        CONSTRAINT `fk_Material_Bibliografico_Idioma1` FOREIGN KEY (`idIdioma`) REFERENCES `BibliotecaBD`.`Idioma` (`idIdioma`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `fk_Material_Bibliografico_Tipo_Material1` FOREIGN KEY (`idTipo`) REFERENCES `BibliotecaBD`.`Tipo_Material` (`idTipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `fk_Material_Bibliografico_Escuela1` FOREIGN KEY (`idEscuela`) REFERENCES `BibliotecaBD`.`Escuela` (`idEscuela`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Estado`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Estado` (
        `idEstado` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
        `nombreEstado` VARCHAR(40) NOT NULL,
        PRIMARY KEY (`idEstado`)
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Ejemplar`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Ejemplar` (
        `idEjemplar` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `disponibilidad` BIT NOT NULL,
        `idMaterial` INT UNSIGNED NOT NULL,
        `idEstado` TINYINT UNSIGNED NOT NULL,
        `visibEjemplar` BIT NOT NULL DEFAULT b '1',
        PRIMARY KEY (`idEjemplar`),
        INDEX `fk_Ejemplar_Material_Bibliografico1_idx` (`idMaterial` ASC) VISIBLE,
        INDEX `fk_Ejemplar_Estado1_idx` (`idEstado` ASC) VISIBLE,
        CONSTRAINT `fk_Ejemplar_Material_Bibliografico1` FOREIGN KEY (`idMaterial`) REFERENCES `BibliotecaBD`.`Material_Bibliografico` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `fk_Ejemplar_Estado1` FOREIGN KEY (`idEstado`) REFERENCES `BibliotecaBD`.`Estado` (`idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Solicitud`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Solicitud` (
        `idSolicitud` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `fechaSolicitud` DATETIME NOT NULL,
        `fechaDevolucionEstimada` DATETIME NOT NULL,
        `estadoSolicitud` BIT NOT NULL DEFAULT b '0',
        `idUsuario` INT UNSIGNED NOT NULL,
        `idEjemplar` INT UNSIGNED NULL,
        `visibSolicitud` BIT NOT NULL DEFAULT b '1',
        PRIMARY KEY (`idSolicitud`),
        UNIQUE INDEX `idSolicitud_UNIQUE` (`idSolicitud` ASC) VISIBLE,
        INDEX `fk_Solicitud_Usuario1_idx` (`idUsuario` ASC) VISIBLE,
        INDEX `fk_Solicitud_Ejemplar1_idx` (`idEjemplar` ASC) VISIBLE,
        CONSTRAINT `fk_Solicitud_Usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `BibliotecaBD`.`Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `fk_Solicitud_Ejemplar1` FOREIGN KEY (`idEjemplar`) REFERENCES `BibliotecaBD`.`Ejemplar` (`idEjemplar`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Prestamo`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Prestamo` (
        `idPrestamo` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `fechaPrestamo` DATETIME NOT NULL,
        `fechaDevolucion` DATETIME NULL DEFAULT NULL,
        `estadoPrestamo` BIT NOT NULL DEFAULT b '0',
        `idSolicitud` INT UNSIGNED NOT NULL,
        `idUsuario` INT UNSIGNED NOT NULL,
        `visibPrestamo` BIT NOT NULL DEFAULT b '1',
        PRIMARY KEY (`idPrestamo`),
        UNIQUE INDEX `idPrestamo_UNIQUE` (`idPrestamo` ASC) VISIBLE,
        INDEX `fk_Prestamo_Solicitud1_idx` (`idSolicitud` ASC) VISIBLE,
        INDEX `fk_Prestamo_Usuario1_idx` (`idUsuario` ASC) VISIBLE,
        CONSTRAINT `fk_Prestamo_Solicitud1` FOREIGN KEY (`idSolicitud`) REFERENCES `BibliotecaBD`.`Solicitud` (`idSolicitud`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `fk_Prestamo_Usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `BibliotecaBD`.`Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Libro`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Libro` (
        `idLibro` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `idMaterial` INT UNSIGNED NOT NULL,
        `isbn10` VARCHAR(10) NULL,
        `isbn13` VARCHAR(14) NULL DEFAULT NULL,
        `editorial` VARCHAR(80) NOT NULL,
        `edicion` TINYINT UNSIGNED NOT NULL,
        PRIMARY KEY (`idLibro`, `idMaterial`),
        INDEX `fk_Libro_Material_Bibliografico1_idx` (`idMaterial` ASC) VISIBLE,
        CONSTRAINT `fk_Libro_Material_Bibliografico1` FOREIGN KEY (`idMaterial`) REFERENCES `BibliotecaBD`.`Material_Bibliografico` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Tesis`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Tesis` (
        `idTesis` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `idMaterial` INT UNSIGNED NOT NULL,
        `resumen` VARCHAR(3000) NULL,
        PRIMARY KEY (`idTesis`, `idMaterial`),
        INDEX `fk_Tesis_Material_Bibliografico1_idx` (`idMaterial` ASC) VISIBLE,
        CONSTRAINT `fk_Tesis_Material_Bibliografico1` FOREIGN KEY (`idMaterial`) REFERENCES `BibliotecaBD`.`Material_Bibliografico` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Examen_Profesional`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Examen_Profesional` (
        `idExamenProfesional` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `idMaterial` INT UNSIGNED NOT NULL,
        `fechaExamen` DATE NOT NULL,
        PRIMARY KEY (`idExamenProfesional`, `idMaterial`),
        CONSTRAINT `fk_Examen_Profesional_Material_Bibliografico1` FOREIGN KEY (`idMaterial`) REFERENCES `BibliotecaBD`.`Material_Bibliografico` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Institucion`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Institucion` (
        `idInstitucion` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `nombreInstitucion` VARCHAR(150) NOT NULL,
        `codigoIdentificacion` VARCHAR(25) NULL DEFAULT NULL,
        `idPais` TINYINT UNSIGNED NOT NULL,
        `visibInstit` BIT NOT NULL DEFAULT b '1',
        PRIMARY KEY (`idInstitucion`),
        INDEX `fk_Institucion_Pais1_idx` (`idPais` ASC) VISIBLE,
        CONSTRAINT `fk_Institucion_Pais1` FOREIGN KEY (`idPais`) REFERENCES `BibliotecaBD`.`Pais` (`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Trabajo_Investigacion`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Trabajo_Investigacion` (
        `IdTrabajoInvestigacion` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `idMaterial` INT UNSIGNED NOT NULL,
        `URI` VARCHAR(8) NULL DEFAULT NULL,
        `idInstitucion` INT UNSIGNED NULL,
        PRIMARY KEY (`IdTrabajoInvestigacion`, `idMaterial`),
        INDEX `fk_Trabajo_Investigacion_Institucion1_idx` (`idInstitucion` ASC) VISIBLE,
        CONSTRAINT `fk_Trabajo_Investigacion_Material_Bibliografico1` FOREIGN KEY (`idMaterial`) REFERENCES `BibliotecaBD`.`Material_Bibliografico` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `fk_Trabajo_Investigacion_Institucion1` FOREIGN KEY (`idInstitucion`) REFERENCES `BibliotecaBD`.`Institucion` (`idInstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Informe_Practica`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Informe_Practica` (
        `idInformePractica` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `idMaterial` INT UNSIGNED NOT NULL,
        `idInstitucion` INT UNSIGNED NOT NULL,
        PRIMARY KEY (`idInformePractica`, `idMaterial`),
        INDEX `fk_Informe_Practica_Institucion1_idx` (`idInstitucion` ASC) VISIBLE,
        CONSTRAINT `fk_Informe_Practica_Material_Bibliografico1` FOREIGN KEY (`idMaterial`) REFERENCES `BibliotecaBD`.`Material_Bibliografico` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `fk_Informe_Practica_Institucion1` FOREIGN KEY (`idInstitucion`) REFERENCES `BibliotecaBD`.`Institucion` (`idInstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Tema`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Tema` (
        `idTema` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
        `nombreTema` VARCHAR(50) NOT NULL,
        PRIMARY KEY (`idTema`)
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Contenido`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Contenido` (
        `idMaterial` INT UNSIGNED NOT NULL,
        `idTema` BIGINT UNSIGNED NOT NULL,
        PRIMARY KEY (`idMaterial`, `idTema`),
        INDEX `fk_Material_Bibliografico_has_Tema_Tema1_idx` (`idTema` ASC) VISIBLE,
        INDEX `fk_Material_Bibliografico_has_Tema_Material_Bibliografico1_idx` (`idMaterial` ASC) VISIBLE,
        CONSTRAINT `fk_Material_Bibliografico_has_Tema_Material_Bibliografico1` FOREIGN KEY (`idMaterial`) REFERENCES `BibliotecaBD`.`Material_Bibliografico` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `fk_Material_Bibliografico_has_Tema_Tema1` FOREIGN KEY (`idTema`) REFERENCES `BibliotecaBD`.`Tema` (`idTema`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Report_Error`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Report_Error` (
        `idReportError` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `errorCode` INT UNSIGNED NULL DEFAULT NULL,
        `errorMessage` VARCHAR(255) NULL DEFAULT NULL,
        `errorTime` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
        `visibError` BIT NOT NULL DEFAULT b '1',
        PRIMARY KEY (`idReportError`)
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Rol`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Rol` (
        `idRol` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
        `nombreRol` VARCHAR(30) NOT NULL,
        PRIMARY KEY (`idRol`)
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Contribuyente`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Contribuyente` (
        `idContribuyente` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `nombres` VARCHAR(60) NOT NULL,
        `apellidos` VARCHAR(60) NOT NULL,
        `sexo` BIT NOT NULL,
        `idEscuela` TINYINT UNSIGNED NULL,
        `idPais` TINYINT UNSIGNED NULL,
        `visibContribuyente` BIT NOT NULL DEFAULT b '1',
        PRIMARY KEY (`idContribuyente`),
        INDEX `fk_Contribuyente_Escuela1_idx` (`idEscuela` ASC) VISIBLE,
        INDEX `fk_Contribuyente_Pais1_idx` (`idPais` ASC) VISIBLE,
        CONSTRAINT `fk_Contribuyente_Escuela1` FOREIGN KEY (`idEscuela`) REFERENCES `BibliotecaBD`.`Escuela` (`idEscuela`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `fk_Contribuyente_Pais1` FOREIGN KEY (`idPais`) REFERENCES `BibliotecaBD`.`Pais` (`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Participacion`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Participacion` (
        `idParticipacion` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `idMaterial` INT UNSIGNED NOT NULL,
        `idContribuyente` INT UNSIGNED NULL DEFAULT NULL,
        `idRol` TINYINT UNSIGNED NOT NULL,
        `idInstitucion` INT UNSIGNED NULL DEFAULT NULL,
        `tipoParticipante` BIT NOT NULL,
        INDEX `fk_Contribuyente_has_Material_Bibliografico_Material_Biblio_idx` (`idMaterial` ASC) VISIBLE,
        INDEX `fk_Contribuyente_has_Material_Bibliografico_Contribuyente1_idx` (`idContribuyente` ASC) VISIBLE,
        INDEX `fk_Participacion_Rol1_idx` (`idRol` ASC) VISIBLE,
        INDEX `fk_Participacion_Institucion1_idx` (`idInstitucion` ASC) VISIBLE,
        PRIMARY KEY (`idParticipacion`),
        CONSTRAINT `fk_Contribuyente_has_Material_Bibliografico_Contribuyente1` FOREIGN KEY (`idContribuyente`) REFERENCES `BibliotecaBD`.`Contribuyente` (`idContribuyente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `fk_Contribuyente_has_Material_Bibliografico_Material_Bibliogr1` FOREIGN KEY (`idMaterial`) REFERENCES `BibliotecaBD`.`Material_Bibliografico` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `fk_Participacion_Rol1` FOREIGN KEY (`idRol`) REFERENCES `BibliotecaBD`.`Rol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `fk_Participacion_Institucion1` FOREIGN KEY (`idInstitucion`) REFERENCES `BibliotecaBD`.`Institucion` (`idInstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Historial_Usuario`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Historial_Usuario` (
        `idHistorial` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `idUsuario` INT UNSIGNED NOT NULL,
        `nombreAtributo` VARCHAR(255) NOT NULL,
        `valorAntiguo` VARCHAR(255) NOT NULL,
        `valorNuevo` VARCHAR(255) NOT NULL,
        `fecha` DATETIME NOT NULL,
        PRIMARY KEY (`idHistorial`)
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BibliotecaBD`.`Historial_Login`
-- -----------------------------------------------------
CREATE TABLE
    IF NOT EXISTS `BibliotecaBD`.`Historial_Login` (
        `idHistorial` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `idLogin` INT UNSIGNED NOT NULL,
        `nombreAtributo` VARCHAR(255) NOT NULL,
        `valorAntiguo` VARCHAR(255) NOT NULL,
        `valorNuevo` VARCHAR(255) NOT NULL,
        `fecha` DATETIME NOT NULL,
        PRIMARY KEY (`idHistorial`)
    ) ENGINE = InnoDB;