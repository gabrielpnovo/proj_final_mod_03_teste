# QUAL A QTD TOTAL DE ESTUDANTES CADASTRADA NO BANCO?
SELECT COUNT(alunos.CPF) AS QTD_ALUNOS FROM alunos;


# QUAIS CURSOS OS ESTUDANTES ESTÃO CADASTRADOS?
SELECT cursos.NOME, alunos.CPF, alunos.NOME FROM
ALUNOS INNER JOIN INSCRICOES
ON alunos.CPF = inscricoes.CPF
INNER JOIN turmas
ON inscricoes.ID_TURMA = turmas.ID_TURMA
INNER JOIN cursos
on turmas.ID_CURSO = cursos.ID_CURSO
GROUP BY alunos.CPF, cursos.ID_CURSO
ORDER BY alunos.NOME;


#QUAIS FACILITADORES ATUAM EM MAIS DE 1 TURMA?
SELECT equipe.MATRICULA, equipe.NOME, COUNT(*) AS QTD_TURMAS from
turmas inner join equipe
on turmas.MATRICULA = equipe.MATRICULA
where turmas.DATA_FIM > CURDATE() and equipe.DATA_SAIDA is NULL
GROUP BY equipe.MATRICULA
ORDER BY QTD_TURMAS DESC;
#HAVING QTD_TURMAS > 1;


# QUAIS CURSOS COM MAIS TURMAS AO LONGO DO ÚLTIMO ANO?
SELECT cursos.NOME, COUNT(turmas.ID_CURSO) AS QTD_TURMAS FROM
turmas INNER JOIN cursos
ON cursos.ID_CURSO = turmas.ID_CURSO
WHERE DATEDIFF(CURDATE(), DATA_INICIO) < 365
GROUP BY turmas.ID_CURSO
ORDER BY QTD_TURMAS DESC;

# AVALIAÇÕES DOS PROFES?
SELECT tab.NOME_PROF, round(tab.MEDIA_FACILITADOR, 2) as AVALIACAO_MEDIA,
CASE
	WHEN MEDIA_FACILITADOR >= 8 THEN 'O profe tem boa avaliação'
    WHEN MEDIA_FACILITADOR < 8 AND MEDIA_FACILITADOR > 5 THEN 'O profe possui avaliacao regular'
    WHEN MEDIA_FACILITADOR <= 5 THEN 'O profe possui avaliação ruim'
END AS avaliacao FROM (
	SELECT equipe.NOME AS NOME_PROF, AVG(NOTA_FACILITADOR) AS MEDIA_FACILITADOR FROM
	avaliacoes INNER JOIN turmas
	ON avaliacoes.ID_TURMA = turmas.ID_TURMA
	INNER JOIN equipe
	ON turmas.MATRICULA = equipe.MATRICULA
	GROUP BY turmas.MATRICULA
	ORDER BY MEDIA_FACILITADOR DESC
) tab;


# AVALIAÇÕES DOS CURSOS?
SELECT tab.NOME_CURSO, round(tab.MEDIA_CURSO, 2) AS AVALIACAO_MEDIA,
CASE
	WHEN MEDIA_CURSO >= 8 THEN 'O curso tem boa avaliação'
    WHEN MEDIA_CURSO < 8 AND MEDIA_CURSO > 5 THEN 'O curso possui avaliacao regular'
    WHEN MEDIA_CURSO <= 5 THEN 'O curso possui avaliação ruim'
END AS AVALAICAO FROM (
	SELECT cursos.NOME as NOME_CURSO, AVG(NOTA_CURSO) AS MEDIA_CURSO FROM
	avaliacoes INNER JOIN turmas
	ON avaliacoes.ID_TURMA = turmas.ID_TURMA
	INNER JOIN cursos
	ON turmas.ID_CURSO = cursos.ID_CURSO
	GROUP BY turmas.ID_CURSO
	ORDER BY MEDIA_CURSO DESC
) tab;


# AVALIAÇÃO MÉDIA DE CADA CURSO COM TIPO DE AVALIAÇÃO MAIS INDICADA PELOS ALUNOS
SELECT NOME_CURSO, AVALIACAO_MEDIA, OPCAO_MAIS_SELECIONADA, MAX(TAB.QTD) AS QTD_OCORRENCIAS FROM (
	SELECT cursos.NOME AS NOME_CURSO, ROUND(AVG(avaliacoes.NOTA_CURSO),2) AS AVALIACAO_MEDIA, avaliacoes.OPCAO_CURSO AS OPCAO_MAIS_SELECIONADA, COUNT(avaliacoes.OPCAO_CURSO) AS QTD FROM
	avaliacoes INNER JOIN turmas
	ON avaliacoes.ID_TURMA = turmas.ID_TURMA
	INNER JOIN cursos
	ON turmas.ID_CURSO = cursos.ID_CURSO
	GROUP BY cursos.ID_CURSO, avaliacoes.OPCAO_CURSO
	ORDER BY cursos.ID_CURSO, QTD DESC
) tab
GROUP BY tab.NOME_CURSO;

# MOTIVOS COM MAIORES RECORRÊNCIAS EM RELAÇÃO AS AVALIAÇÕES DOS CURSOS COM NOTA MENOR OU IGUAL A 5
/*
SELECT NOME_CURSO, OPCAO, MAX(TAB.QTD) AS QTD_OCORRENCIAS FROM (
	SELECT cursos.NOME AS NOME_CURSO, avaliacoes.OPCAO_CURSO AS OPCAO, COUNT(avaliacoes.OPCAO_CURSO) AS QTD FROM
	avaliacoes INNER JOIN turmas
	ON avaliacoes.ID_TURMA = turmas.ID_TURMA
    INNER JOIN cursos
    ON turmas.ID_CURSO = cursos.ID_CURSO
    WHERE avaliacoes.NOTA_CURSO <= 5
	GROUP BY cursos.ID_CURSO, avaliacoes.OPCAO_CURSO
    ORDER BY cursos.ID_CURSO, QTD DESC
) tab
GROUP BY tab.NOME_CURSO;
*/


#QTD PROFESSORES DISPONIVEIS POR CURSO
select tab_disponivel.NOME, QTD_ATIVA, QTD_ALOCADA, (QTD_ATIVA - QTD_ALOCADA) AS QTD_DISPONIVEL from (
	SELECT cursos.id_curso, cursos.nome, COUNT(prof_curso.MATRICULA) QTD_ATIVA FROM
	cursos INNER JOIN prof_curso
	ON cursos.ID_CURSO = prof_curso.ID_CURSO
	INNER JOIN equipe
	ON prof_curso.MATRICULA = equipe.MATRICULA
	WHERE equipe.DATA_SAIDA IS NULL
	GROUP BY cursos.ID_CURSO
	ORDER BY equipe.MATRICULA ASC
) tab_disponivel INNER JOIN (
	SELECT cursos.ID_CURSO, COUNT(turmas.MATRICULA) QTD_ALOCADA FROM
	turmas INNER JOIN cursos
	ON turmas.ID_CURSO = cursos.ID_CURSO
	WHERE turmas.DATA_FIM > CURDATE()
	GROUP BY cursos.ID_CURSO
) tab_em_aula
ON tab_disponivel.ID_CURSO = tab_em_aula.ID_CURSO;