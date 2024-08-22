#1 Selecione as musicas que pertencem à playlist funk 
SELECT FK_musica_nome AS Funk FROM musicaplaylist WHERE FK_playlist_cod = "12345";

#2 Selecione o valor do plano mais caro e o mais barato
SELECT max(valor) AS maior, min(valor) AS menor FROM plano;

#3 Selecione os planos mensais em ordem crescente
SELECT * FROM plano ORDER BY valor;

#4 Selecionar músicas lançadas entre 2010 e 2020
SELECT nome, lancamento FROM musica WHERE lancamento BETWEEN "2010-01-01" AND ""
"2020-12-31";

#5 Selecionar as musicas lançadas em 2001
SELECT nome FROM musica WHERE lancamento = "2001";

#6 Selecionar total de músicas disponíveis
SELECT COUNT(*) AS total_musicas FROM musica;

#7 Selecionar os artistas ordenados por nome em ordem decrescente
SELECT nome FROM artista ORDER BY nome DESC;

#8 Selecionar todas as músicas selecionadas por lançamento em ordem crescente
SELECT nome lacamento FROM musica ORDER BY lancamento ASC;

#9 Selecione o número de um artista específico
SELECT num  AS numero FROM artista WHERE nome = "Mariana Vanessa";

#10 Selecionar artistas cujo o nome começa com "M"
SELECT nome FROM artista WHERE nome LIKE "W%";