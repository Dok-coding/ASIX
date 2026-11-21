DROP TABLE IF EXISTS `CURS`;

CREATE TABLE 'CURS' (
    'id_curs' int AUTO_INCREMENT PRIMARY KEY,
    'codi' varchar(50),
    'nom' varchar(50) NOT NULL,
    'hores' smallint,
    UNIQUE('codi')
)  ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

DROP TABLE IF EXISTS 'PROFESSOR';

CREATE TABLE 'PROFESSOR'(
    'id_professor' int AUTO_INCREMENT PRIMARY KEY,
    'dni_nie' varchar(9) NOT NULL,
    'nom' varchar(50) NOT NULL,
    'cognom' varchar(50),
    'email' varchar(200),
    UNIQUE ('email'),
    UNIQUE ('dni_nie'),
        CONSTRAINT 'ck_valid_nif' check (char_length(dni_nie) = 9
    AND (
        (
            left(dni_nie,1) IN ('X','Y','Z')
            AND SUBSTRING(dni_nie, 2, 7) BETWEEN '0000000'AND '9999999'
            AND RIGHT (dni_nie,1) = SUBSTRING('TRWAGMYFPDXBNJZSQVHLCKE',
                    (
                    CONCAT(
                    CASE LEFT(dni_nie,1)
                    WHEN 'X' THEN '0'
                    WHEN 'Y' THEN '1'
                    WHEN 'Z' THEN '2'
                END, SUBSTRING(dni_nie,2,7)) % 23) + 1 , 1)
        )
    OR 
        (
            left(dni_nie,1) between '0' and '9'
            AND left(dni_nie,8) between '00000000' and '99999999'
            AND RIGHT(dni_nie, 1) = SUBSTRING('TRWAGMYFPDXBNJZSQVHLCKE', (LEFT(dni_nie, 8) % 23) + 1, 1) 
        )
        )
                                )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

DROP TABLE IF EXISTS 'AULA';

CREATE TABLE 'AULA'(
    'id_aula' int AUTO_INCREMENT PRIMARY KEY,
    'codi' varchar,
    'capacitat' smallint,
    UNIQUE ('codi'),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

DROP TABLE IF EXISTS 'ALUMNE';

CREATE TABLE 'ALUMNE'(
    'id_alumne' int AUTO_INCREMENT PRIMARY KEY,
    'dni_nie' varchar(9),
    'nom' varchar(50),
    'cognoms' varchar(50),
    'email' varchar(200),
    UNIQUE('dni_nie'),
    UNIQUE('email'),
        CONSTRAINT 'ck_valid_nif' check (char_length(dni_nie) = 9
    AND (
        (
            left(dni_nie,1) IN ('X','Y','Z')
            AND SUBSTRING(dni_nie, 2, 7) BETWEEN '0000000'AND '9999999'
            AND RIGHT (dni_nie,1) = SUBSTRING('TRWAGMYFPDXBNJZSQVHLCKE',
                    (
                    CONCAT(
                    CASE LEFT(dni_nie,1)
                    WHEN 'X' THEN '0'
                    WHEN 'Y' THEN '1'
                    WHEN 'Z' THEN '2'
                END, SUBSTRING(dni_nie,2,7)) % 23) + 1 , 1)
        )
    OR 
        (
            left(dni_nie,1) between '0' and '9'
            AND left(dni_nie,8) between '00000000' and '99999999'
            AND RIGHT(dni_nie, 1) = SUBSTRING('TRWAGMYFPDXBNJZSQVHLCKE', (LEFT(dni_nie, 8) % 23) + 1, 1) 
        )
        )
                                )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

DROP TABLE IF EXISTS 'EDICIO';

CREATE TABLE 'EDICIO'(
    'id_edicio' int AUTO_INCREMENT PRIMARY KEY,
    'data_inici' date NOT NULL,
    'data_fi' date,
    'id_curs' int,
    'id_professor' int,
    'id_aula' int,
    CONSTRAINT 'fk_id_curs'
    FOREIGN KEY ('id_curs')
    REFERENCES CURS('id_curs'),
    CONSTRAINT 'fk_id_professor'
    FOREIGN KEY ('id_professor')
    REFERENCES PROFESSOR('id_professor'),
    CONSTRAINT 'fk_id_aula'
    FOREIGN KEY ('id_aula')
    REFERENCES AULA('id_aula')

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

DROP TABLE IF EXISTS 'MATRICULA';

CREATE TABLE 'MATRICULA'(
    'id_matricula' int AUTO_INCREMENT PRIMARY KEY,
    'id_alumne' int,
    'id_edicio' int,
    'data_matricula' date,
    'qualificacio_final' decimal(8,2),
    CONSTRAINT 'fk_id_alumne'
    FOREIGN KEY ('id_alumne')
    REFERENCES ALUMNE('id_alumne'),
    CONSTRAINT 'fk_id_edicio'
    FOREIGN KEY ('id_edicio')
    REFERENCES EDICIO('id_edicio')

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;