USE proj_final_mod3;

# ========== TABELA PRODUTOS ==========
INSERT INTO tbprodutos (
NOME, DESCRICAO, ID_FORNECEDOR, CATEGORIA, TAMANHO, PRECO, SUSTENTAVEL, QTD_ESTOQUE) VALUES ('bermuda linho', 'bermuda em linho sustentável', 1, 'bermuda', 'M', 159.90, 1, 500);
INSERT INTO tbprodutos (
NOME, DESCRICAO, ID_FORNECEDOR, CATEGORIA, TAMANHO, PRECO, SUSTENTAVEL, QTD_ESTOQUE) VALUES ('short alfaiataria', 'short em alfaiataria', 2, 'short', 'P', 139.90, 0, 350);
INSERT INTO tbprodutos (
NOME, DESCRICAO, ID_FORNECEDOR, CATEGORIA, TAMANHO, PRECO, SUSTENTAVEL, QTD_ESTOQUE) VALUES ('camisa linho', 'camisa linho basica sustentavel', 3, 'camisa', 'G', 199.90, 1, 200);
INSERT INTO tbprodutos (
NOME, DESCRICAO, ID_FORNECEDOR, CATEGORIA, TAMANHO, PRECO, SUSTENTAVEL, QTD_ESTOQUE) VALUES ('bermuda linho', 'bermuda em linho sustentável', 4, 'bermuda', 'M', 159.90, 1, 500);
INSERT INTO tbprodutos (
NOME, DESCRICAO, ID_FORNECEDOR, CATEGORIA, TAMANHO, PRECO, SUSTENTAVEL, QTD_ESTOQUE) VALUES ('calca jogger', 'calca jogger em sarja sustentavel', 5, 'calca', 'P', 159.90, 1, 50);
INSERT INTO tbprodutos (
NOME, DESCRICAO, ID_FORNECEDOR, CATEGORIA, TAMANHO, PRECO, SUSTENTAVEL, QTD_ESTOQUE) VALUES ('calca cargo', 'calca cargo em sarja sustentabel', 6, 'calca', 'M', 179.90, 1, 480);
INSERT INTO tbprodutos (
NOME, DESCRICAO, ID_FORNECEDOR, CATEGORIA, TAMANHO, PRECO, SUSTENTAVEL, QTD_ESTOQUE) VALUES ('calca wide', 'calca wideleg em jeans sustentavel', 7, 'calca', 'GG', 259.90, 1, 360);
INSERT INTO tbprodutos (
NOME, DESCRICAO, ID_FORNECEDOR, CATEGORIA, TAMANHO, PRECO, SUSTENTAVEL, QTD_ESTOQUE) VALUES ('calca linho', 'calca linho basica sustentavel', 8, 'calca', 'PP', 299.90, 1, 200);
INSERT INTO tbprodutos (
NOME, DESCRICAO, ID_FORNECEDOR, CATEGORIA, TAMANHO, PRECO, SUSTENTAVEL, QTD_ESTOQUE) VALUES ('calca alfaiataria', 'calca em alfaiataria', 9, 'calca', 'P', 219.90, 0, 75);
INSERT INTO tbprodutos (
NOME, DESCRICAO, ID_FORNECEDOR, CATEGORIA, TAMANHO, PRECO, SUSTENTAVEL, QTD_ESTOQUE) VALUES ('bermuda jeans', 'bermuda jeans sustentavel', 10, 'bermuda', 'M', 159.90, 1, 360);
INSERT INTO tbprodutos (
NOME, DESCRICAO, ID_FORNECEDOR, CATEGORIA, TAMANHO, PRECO, SUSTENTAVEL, QTD_ESTOQUE) VALUES ('short jeans', 'short jeans sustentavel', 11, 'short', 'G', 139.90, 1, 600);
INSERT INTO tbprodutos (
NOME, DESCRICAO, ID_FORNECEDOR, CATEGORIA, TAMANHO, PRECO, SUSTENTAVEL, QTD_ESTOQUE) VALUES ('calca jeans', 'calca jeans basica sustentavel', 12, 'calca', 'PP', 179.90, 1, 560);
INSERT INTO tbprodutos (
NOME, DESCRICAO, ID_FORNECEDOR, CATEGORIA, TAMANHO, PRECO, SUSTENTAVEL, QTD_ESTOQUE) VALUES ('camisa estampada', 'camisa estampada', 13, 'camisa', 'M', 159.90, 0, 350);
INSERT INTO tbprodutos (
NOME, DESCRICAO, ID_FORNECEDOR, CATEGORIA, TAMANHO, PRECO, SUSTENTAVEL, QTD_ESTOQUE) VALUES ('camisa lisa', 'camisa lisa basica', 14, 'camisa', 'G', 129.90, 0, 400);
INSERT INTO tbprodutos (
NOME, DESCRICAO, ID_FORNECEDOR, CATEGORIA, TAMANHO, PRECO, SUSTENTAVEL, QTD_ESTOQUE) VALUES ('blusa sm', 'blusa sem manga', 15, 'blusa', 'P', 119.90, 0, 175);

# ========== TABELA CLIENTES ==========
INSERT INTO tbclientes (
CPF, NOME, SOBRENOME, NACIONALIDADE, DATA_NASCIMENTO) VALUES ('00000000000', 'Joao', 'da Silva', 'Brasileira', '1964-05-20');

INSERT INTO tbclientes (
CPF, NOME, SOBRENOME, NACIONALIDADE, DATA_NASCIMENTO) VALUES ('11111111111', 'Joana', 'Dark', 'Holandesa', '1965-06-18');

INSERT INTO tbclientes (
CPF, NOME, SOBRENOME, NACIONALIDADE, DATA_NASCIMENTO) VALUES ('22222222222', 'Joana', 'McDonald', 'USA', '1973-01-03');

INSERT INTO tbclientes (
CPF, NOME, SOBRENOME, NACIONALIDADE, DATA_NASCIMENTO) VALUES ('33333333333', 'Mateus', 'Gomes', 'Brasileira', '1992-05-17');

INSERT INTO tbclientes (
CPF, NOME, SOBRENOME, NACIONALIDADE, DATA_NASCIMENTO) VALUES ('44444444444', 'Julia', 'Vieira', 'Brasileira', '1983-10-30');

INSERT INTO tbclientes (
CPF, NOME, SOBRENOME, NACIONALIDADE, DATA_NASCIMENTO) VALUES ('55555555555', 'Marcelo', 'Estevao', 'Brasileira', '2000-06-18');

INSERT INTO tbclientes (
CPF, NOME, SOBRENOME, NACIONALIDADE, DATA_NASCIMENTO) VALUES ('66666666666', 'Fernanda', 'Duarte', 'Brasileira', '1995-12-15');

INSERT INTO tbclientes (
CPF, NOME, SOBRENOME, NACIONALIDADE, DATA_NASCIMENTO) VALUES ('77777777777', 'Fernando', 'Dias', 'Brasileira', '1975-02-05');

INSERT INTO tbclientes (
CPF, NOME, SOBRENOME, NACIONALIDADE, DATA_NASCIMENTO) VALUES ('88888888888', 'Vitor', 'Oliveira', 'Brasileira', '1963-08-21');

INSERT INTO tbclientes (
CPF, NOME, SOBRENOME, NACIONALIDADE, DATA_NASCIMENTO) VALUES ('99999999999', 'Bruno', 'da Silveira', 'Brasileira', '1976-09-25');

# ========== TABELA AVALIAÇÕES ==========
INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('55555555555', 1, 'Produto muito bom', '2022-09-10','O produto me supreendeu mto positivamente!', 5);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('55555555555', 3, 'Ruim', '2021-07-16','Encolheu na primeira lavagem', 2);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('55555555555', 5, 'Espetacular', '2020-05-13','O produto é excelente, superou minhas expectativas', 5);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('11111111111', 7, 'Bom', '2022-09-20','Calca com bom tecido e design', 3);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('11111111111', 9, 'Ruim', '2022-05-16','Encolheu na primeira lavagem', 2);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('66666666666', 11, 'Excelente', '2022-03-08','Tecido confortavel e ótimo corte', 5);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('66666666666', 13, 'Muito bom', '2022-09-15','O produto é lindo!', 5);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('66666666666', 15, 'Muito ruim', '2021-06-05','Material de pessima qualidade.', 1);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('66666666666', 2, 'Razoavel', '2019-12-15','Bom para o dia a dia', 3);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('77777777777', 4, 'Regular', '2018-10-12','Não deixou a desejar.', 3);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('77777777777', 6, 'Bom', '2017-11-22','Boas opcoes de cores.', 4);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('88888888888', 8, 'Bom', '2020-02-10','Boas opcoes de tamanhos', 4);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('88888888888', 10, 'Muito bom', '2022-06-13','Otima qualidade! Recomendarei para meus amigos!', 5);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('88888888888', 12, 'Regular', '2022-08-31','Encolheu na 3a lavagem.', 3);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('88888888888', 14, 'Regular', '2021-08-12','Costura se soltou na 1a lavagem.', 3);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('88888888888', 1, 'Excelente', '2021-09-01','Amei o produto! Seguirei comprando!', 5);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('88888888888', 3, 'Otimo', '2016-05-06','Excelente corte e combinacao de cores.', 5);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('99999999999', 5, 'Mto bom', '2021-06-11','Atendeu minhas expectativas.', 5);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('99999999999', 7, 'Ruim', '2022-07-26','Não seguirei comprando essa linha de produtos.', 1);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('99999999999', 9, 'Ruim', '2018-03-21','Deixou a desejar na qualidade do material.', 2);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('22222222222', 13, 'Otimo', '2021-03-13','Boa qualidade! Irei usar no ano novo.', 5);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('22222222222', 14, 'Mto bom', '2020-02-02','Amei. Era bem o q tinha em mente.', 5);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('22222222222', 10, 'Regular', '2020-01-06','ok', 3);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('22222222222', 8, 'Bom', '2022-09-17','Produto bom.', 4);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('33333333333', 6, 'Bom', '2022-09-05','Gostei bastante. Comprarei mais.', 4);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('33333333333', 4, 'Mto bom', '2019-11-12','Combina com tudo!', 5);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('33333333333', 2, 'Bom', '2019-02-16','Gostei.', 4);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('33333333333', 1, 'Regular', '2018-01-05','Gostaria de ter mais opcoes de cores.', 3);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('44444444444', 11, 'Regular', '2021-12-03','Encolheu na 1a lavagem.', 2);

INSERT INTO tbavaliacoes (
CPF, ID_PRODUTO, TITULO, DATA_AVALIACAO, COMENTARIO, NOTA) VALUES ('44444444444', 15, 'Produto ok', '2017-04-30','Produto simples.', 3);