-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano 
FROM filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano 
FROM filmes
ORDER BY Ano ASC

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De volta para o futuro'

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997 

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000 

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150 

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, count(Nome) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC -- NÃO É POSSÍVEL REALIZAR ORDER BY POR DURACAO, POIS INFLINGE A REGRA DO AGRUPAMENTO, ASSIM SENDO, 
						 -- OPTEI POR FAZER PELA QUANTIDADE, OQUE ACREDITO SER O ESPERADO.

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome, GENERO
FROM Atores
WHERE Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome, GENERO
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
SELECT Nome, Genero
FROM FilmesGenero JOIN Filmes ON IdFilme = Filmes.Id 
	 JOIN Generos ON IdGenero = Generos.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Nome, Genero
FROM FilmesGenero JOIN Filmes ON IdFilme = Filmes.Id 
	 JOIN Generos ON IdGenero = Generos.Id
WHERE Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Nome, concat(PrimeiroNome, ' ', UltimoNome) Atores, Papel
FROM ElencoFilme JOIN Filmes ON IdFilme = Filmes.Id 
	 JOIN Atores ON IdAtor = Atores.Id

