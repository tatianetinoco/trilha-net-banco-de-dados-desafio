-- Tabelas
SELECT * FROM Atores
SELECT * FROM ElencoFilme
SELECT * FROM Filmes
SELECT * FROM FilmesGenero
SELECT * FROM Generos

--1 Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

--2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

--3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duracao
SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'
ORDER BY Nome, Ano, Duracao

--4 Buscar os filmes lancados em 1997
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

--5 Buscar os filmes lan�ados AP�S o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

--6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7 Buscar a quantidade de filmes lancadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, 
COUNT(*) QuantidadeFilmesLancadosNoAno 
FROM Filmes
GROUP BY Ano 
ORDER BY QuantidadeFilmesLancadosNoAno DESC

--8 Buscar os Atores do genero masculino, retornando o PrimeiroNome, UltimoNome
 SELECT * FROM Atores WHERE Genero = 'M' 

--9 Buscar os Atores do genero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores 
WHERE Genero = 'F' 
ORDER BY PrimeiroNome

--10 Buscar o nome do filme e o genero
SELECT Filmes.Nome, Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--11 Buscar o nome do filme e o genero do tipo "Mistério"
SELECT Filmes.Nome, Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

--12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
Filmes.Nome, 
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel 
FROM Filmes 
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme 
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor

