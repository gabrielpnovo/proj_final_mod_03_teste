USE proj_final_mod3;

# Quais são os 3 produtos mais caros?
SELECT * FROM tbprodutos ORDER BY PRECO DESC LIMIT 3;

# Quantas avaliações cada cliente realizou?
SELECT c.CPF, c.NOME, c.SOBRENOME, COUNT(a.CPF) NRO_AVALIACOES FROM
tbclientes c LEFT JOIN tbavaliacoes a
ON a.CPF = c.CPF
GROUP BY c.CPF;

# Qual a média das avaliações de cada produto?
SELECT p.ID_PRODUTO, p.NOME, ROUND(AVG(a.NOTA),2) AS MEDIA FROM
tbprodutos p INNER JOIN tbavaliacoes a
ON p.ID_PRODUTO = a.ID_PRODUTO
GROUP BY p.ID_PRODUTO
ORDER BY p.ID_PRODUTO;

# Qual a data de avaliação mais recente de cada produto?
SELECT a.ID_PRODUTO, p.NOME, MAX(a.DATA_AVALIACAO) AS ULTIMA_AVALIACAO FROM
tbavaliacoes a INNER JOIN tbprodutos p
ON a.ID_PRODUTO = p.ID_PRODUTO
GROUP BY a.ID_PRODUTO
ORDER BY a.ID_PRODUTO;

# Quais os clientes cujo nome se inicia com Joana?
SELECT * FROM tbclientes WHERE NOME LIKE 'Joana%';

# Qual o produto que recebeu a menor avaliação?
SELECT a.ID_PRODUTO, p.NOME, MIN(NOTA) AS NOTA_MINIMA FROM
tbavaliacoes a INNER JOIN tbprodutos p
ON a.ID_PRODUTO = p.ID_PRODUTO
GROUP BY a.ID_PRODUTO
HAVING NOTA_MINIMA = (SELECT MIN(NOTA) FROM tbavaliacoes);

# Quais são os produtos cuja avaliação mais recente é anterior a 30 dias (liste-os como "Avaliação desatualizada")?
SELECT a.ID_PRODUTO, p.NOME, a.DATA_AVALIACAO,
CASE
	WHEN DATEDIFF(CURDATE(), a.DATA_AVALIACAO) > 30 THEN 'Avaliação desatualizada'
    ELSE 'Avaliação atualizada'
END AS AVALIACAO
FROM
tbavaliacoes a INNER JOIN tbprodutos p
ON a.ID_PRODUTO = p.ID_PRODUTO;