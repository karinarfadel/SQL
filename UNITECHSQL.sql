CREATE TABLE campus (
    id_campus INTEGER PRIMARY KEY,
    turno VARCHAR(20),
    id_curso INTEGER,
    id_aluno INTEGER,
    id_turma INTEGER,
    id_professor INTEGER,
    endereco VARCHAR(200)
);

CREATE TABLE curso (
    id_curso INTEGER PRIMARY KEY,
    id_professor INTEGER,
    id_aluno INTEGER,
    nome_do_curso VARCHAR(200),
    id_turma INTEGER,
    id_campus CHAR(7) NOT NULL,
    doutorado VARCHAR(200),
    mestrado VARCHAR(200),
    especializacao VARCHAR(200),
    graduacao VARCHAR(200)
    );
    
    CREATE TABLE disciplina (
    id_curso INTEGER,
    id_professor INTEGER,
    id_disciplina INTEGER PRIMARY KEY,
    nome_da_disciplina VARCHAR(200)
);

CREATE TABLE professor (
    id_professor INTEGER PRIMARY KEY,
    nome_do_professor VARCHAR(200)
);

CREATE TABLE aluno (
    id_aluno INTEGER PRIMARY KEY,
    nome_do_aluno VARCHAR(200),
    id_curso INTEGER,
    id_turma INTEGER,
    atividade_1 INTEGER,
    atividade_2 INTEGER,
    faltas INTEGER
);

CREATE TABLE turma (
    id_turma INTEGER PRIMARY KEY,
    id_aluno INTEGER,
    id_curso INTEGER
);

CREATE TABLE diario (
    id_disciplina INTEGER,
    faltas INTEGER,
    atividade_1 INTEGER,
    atividade_2 INTEGER,
    id_professor INTEGER,
    id_aluno INTEGER,
    id_turma INTEGER,
    status VARCHAR(20)
);

CREATE TABLE campus_curso (
    fk_campus_id_campus INTEGER,
    fk_curso_id_curso INTEGER
);

CREATE TABLE curso_disciplina (
    fk_curso_id_curso INTEGER,
    fk_disciplina_id_disciplina INTEGER
);

CREATE TABLE professor_curso_disciplina_turma_curso_professor_disciplina_turma (
    fk_curso_id_curso INTEGER,
    fk_professor_id_professor INTEGER,
    fk_disciplina_id_disciplina INTEGER,
    fk_turma_id_turma INTEGER
);

CREATE TABLE aluno_curso_turma_turma_aluno_curso (
    fk_turma_id_turma INTEGER,
    fk_aluno_id_aluno INTEGER,
    fk_curso_id_curso INTEGER
);

CREATE TABLE curso_diario (
    fk_curso_id_curso INTEGER
);

ALTER TABLE campus_curso ADD CONSTRAINT FK_campus_curso_1
    FOREIGN KEY (fk_campus_id_campus)
    REFERENCES campus (id_campus)
    ON DELETE RESTRICT;
 
ALTER TABLE campus_curso ADD CONSTRAINT FK_campus_curso_2
    FOREIGN KEY (fk_curso_id_curso)
    REFERENCES curso (id_curso)
    ON DELETE SET NULL;
 
ALTER TABLE curso_disciplina ADD CONSTRAINT FK_curso_disciplina_1
    FOREIGN KEY (fk_curso_id_curso)
    REFERENCES curso (id_curso)
    ON DELETE RESTRICT;
 
ALTER TABLE curso_disciplina ADD CONSTRAINT FK_curso_disciplina_2
    FOREIGN KEY (fk_disciplina_id_disciplina)
    REFERENCES disciplina (id_disciplina)
    ON DELETE RESTRICT;
 
ALTER TABLE professor_curso_disciplina_turma_curso_professor_disciplina_turma ADD CONSTRAINT FK_professor_curso_disciplina_turma_curso_professor_disciplina_turma_1
    FOREIGN KEY (fk_curso_id_curso)
    REFERENCES curso (id_curso)
    ON DELETE NO ACTION;
 
ALTER TABLE professor_curso_disciplina_turma_curso_professor_disciplina_turma ADD CONSTRAINT FK_professor_curso_disciplina_turma_curso_professor_disciplina_turma_2
    FOREIGN KEY (fk_professor_id_professor)
    REFERENCES professor (id_professor)
    ON DELETE RESTRICT;
 
ALTER TABLE professor_curso_disciplina_turma_curso_professor_disciplina_turma ADD CONSTRAINT FK_professor_curso_disciplina_turma_curso_professor_disciplina_turma_3
    FOREIGN KEY (fk_disciplina_id_disciplina)
    REFERENCES disciplina (id_disciplina)
    ON DELETE NO ACTION;
 
ALTER TABLE professor_curso_disciplina_turma_curso_professor_disciplina_turma ADD CONSTRAINT FK_professor_curso_disciplina_turma_curso_professor_disciplina_turma_4
    FOREIGN KEY (fk_turma_id_turma)
    REFERENCES turma (id_turma)
    ON DELETE NO ACTION;
 
ALTER TABLE aluno_curso_turma_turma_aluno_curso ADD CONSTRAINT FK_aluno_curso_turma_turma_aluno_curso_1
    FOREIGN KEY (fk_turma_id_turma)
    REFERENCES turma (id_turma)
    ON DELETE RESTRICT;
 
ALTER TABLE aluno_curso_turma_turma_aluno_curso ADD CONSTRAINT FK_aluno_curso_turma_turma_aluno_curso_2
    FOREIGN KEY (fk_aluno_id_aluno)
    REFERENCES aluno (id_aluno)
    ON DELETE NO ACTION;
 
ALTER TABLE aluno_curso_turma_turma_aluno_curso ADD CONSTRAINT FK_aluno_curso_turma_turma_aluno_curso_3
    FOREIGN KEY (fk_curso_id_curso)
    REFERENCES curso (id_curso)
    ON DELETE RESTRICT;
 
ALTER TABLE curso_diario ADD CONSTRAINT FK_curso_diario_1
    FOREIGN KEY (fk_curso_id_curso)
    REFERENCES curso (id_curso)
    ON DELETE RESTRICT;
    





