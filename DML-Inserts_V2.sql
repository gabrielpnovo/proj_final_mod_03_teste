#EQUIPE
select * from equipe;
select * from alocacoes_prof;
select * from turmas;
INSERT INTO equipe (
MATRICULA, DATA_SAIDA) VALUES (1, '2021-01-02');

INSERT INTO equipe (
MATRICULA, DATA_SAIDA) VALUES (2, NULL);

INSERT INTO equipe (
MATRICULA, DATA_SAIDA) VALUES (3, NULL);

INSERT INTO equipe (
MATRICULA, DATA_SAIDA) VALUES (4, NULL);

INSERT INTO equipe (
MATRICULA, DATA_SAIDA) VALUES (5, NULL);

INSERT INTO equipe (
MATRICULA, DATA_SAIDA) VALUES (6, '2021-10-12');

INSERT INTO equipe (
MATRICULA, DATA_SAIDA) VALUES (7, NULL);

INSERT INTO equipe (
MATRICULA, DATA_SAIDA) VALUES (8, NULL);

delete from equipe where matricula in (1, 2, 3, 4, 5, 6, 7, 8);
delete from equipe where matricula = 3;

#ALOCACOES_PROF
select * from alocacoes_prof;
delete from alocacoes_prof where indice=4;
INSERT INTO alocacoes_prof (
INDICE, MATRICULA, ID_MODULO) VALUES (1, 1, 1);

INSERT INTO alocacoes_prof (
INDICE, MATRICULA, ID_MODULO) VALUES (2, 2, 2);

INSERT INTO alocacoes_prof (
INDICE, MATRICULA, ID_MODULO) VALUES (3, 3, 5);

INSERT INTO alocacoes_prof (
INDICE, MATRICULA, ID_MODULO) VALUES (4, 3, 1);

INSERT INTO alocacoes_prof (
INDICE, MATRICULA, ID_MODULO) VALUES (5, 3, 4);

INSERT INTO alocacoes_prof (
INDICE, MATRICULA, ID_MODULO) VALUES (6, 4, 4);

INSERT INTO alocacoes_prof (
INDICE, MATRICULA, ID_MODULO) VALUES (7, 4, 5);

INSERT INTO alocacoes_prof (
INDICE, MATRICULA, ID_MODULO) VALUES (8, 5, 5);

delete from alocacoes_prof where indice in (1, 2, 3, 4, 5, 6, 7, 8);

#TURMA
select * from turmas;
delete from turmas where id_turma = 5;
INSERT INTO turmas (
ID_TURMA, MATRICULA_TECH, DATA_FIM) VALUES (1, 1, '2023-1-01');

INSERT INTO turmas (
ID_TURMA, MATRICULA_TECH, DATA_FIM) VALUES (2, 1, '2022-10-30');

INSERT INTO turmas (
ID_TURMA, MATRICULA_TECH, DATA_FIM) VALUES (3, 3, '2023-09-01');

INSERT INTO turmas (
ID_TURMA, MATRICULA_TECH, DATA_FIM) VALUES (5, 3, '2021-10-30');

delete from turmas where id_turma in (1, 2, 3, 4);

#MODULOS
select * from modulos;
INSERT INTO modulos (
ID_MODULO, NOME, DESCRICAO, DURACAO) VALUES (1, 'moduloA', 'descricaoModA', 1);

INSERT INTO modulos (
ID_MODULO, NOME, DESCRICAO, DURACAO) VALUES (2, 'moduloB', 'descricaoModB', 1);

INSERT INTO modulos (
ID_MODULO, NOME, DESCRICAO, DURACAO) VALUES (3, 'moduloC', 'descricaoModC', 1);

INSERT INTO modulos (
ID_MODULO, NOME, DESCRICAO, DURACAO) VALUES (4, 'moduloD', 'descricaoModD', 1);

INSERT INTO modulos (
ID_MODULO, NOME, DESCRICAO, DURACAO) VALUES (5, 'moduloE', 'descricaoModE', 1);

#CURSOS
INSERT INTO cursos (
ID_CURSO, NOME, DESCRICAO, DURACAO) VALUES (1, 'cursoA', 'descricaoCurA', 1);

INSERT INTO cursos (
ID_CURSO, NOME, DESCRICAO, DURACAO) VALUES (2, 'cursoB', 'descricaoCurB', 1);

INSERT INTO cursos (
ID_CURSO, NOME, DESCRICAO, DURACAO) VALUES (3, 'cursoC', 'descricaoCurC', 1);

#REL_MOD_CUR
select * from rel_mod_curso;
INSERT INTO rel_mod_curso (
INDICE, ID_CURSO, ID_MODULO) VALUES (1, 1, 1);

INSERT INTO rel_mod_curso (
INDICE, ID_CURSO, ID_MODULO) VALUES (2, 1, 2);

INSERT INTO rel_mod_curso (
INDICE, ID_CURSO, ID_MODULO) VALUES (3, 1, 5);

INSERT INTO rel_mod_curso (
INDICE, ID_CURSO, ID_MODULO) VALUES (4, 2, 1);

INSERT INTO rel_mod_curso (
INDICE, ID_CURSO, ID_MODULO) VALUES (5, 2, 3);

INSERT INTO rel_mod_curso (
INDICE, ID_CURSO, ID_MODULO) VALUES (6, 2, 4);

INSERT INTO rel_mod_curso (
INDICE, ID_CURSO, ID_MODULO) VALUES (7, 3, 1);

INSERT INTO rel_mod_curso (
INDICE, ID_CURSO, ID_MODULO) VALUES (8, 3, 3);

INSERT INTO rel_mod_curso (
INDICE, ID_CURSO, ID_MODULO) VALUES (9, 3, 4);

INSERT INTO rel_mod_curso (
INDICE, ID_CURSO, ID_MODULO) VALUES (10, 3, 5);