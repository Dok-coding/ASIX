CREATE TABLE `EDICIO`(
    `id_edicio` int AUTO_INCREMENT PRIMARY KEY,
    `data_inici` date NOT NULL,
    `data_fi` date,
    `id_curs` int,
    `id_professor` int,
    `id_aula` int,
    CONSTRAINT `fk_id_curs`
    FOREIGN KEY (`id_curs`)
    REFERENCES CURS(`id_curs`),
    CONSTRAINT `fk_id_professor`
    FOREIGN KEY (`id_professor`)
    REFERENCES PROFESSOR(`id_professor`),
    CONSTRAINT `fk_id_aula`
    FOREIGN KEY (`id_aula`)
    REFERENCES AULA(`id_aula`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;