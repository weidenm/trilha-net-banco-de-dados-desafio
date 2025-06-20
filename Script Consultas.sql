
--1- Buscar o nome e o ano dos filmes
SELECT Nome, Ano FROM Filmes

--2- Buscar o nome e o ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM Filmes order by Ano Asc

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT Nome, Ano, Duracao FROM Filmes where Nome like '%De volta para o futuro%'

--4 - Buscar os filmes lan�ados em 1997
SELECT * FROM Filmes where Ano = 1997

--5 - Buscar os filmes lan�ados AP�S o ano 2000
SELECT * FROM Filmes where Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM Filmes 
WHERE Duracao > 100 and Duracao < 150 
ORDER BY Duracao 

--7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, count(*) QtFilmes FROM Filmes 
GROUP BY Ano
ORDER BY count(*) DESC, Max(Duracao)  DESC 

--8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome 
FROM Atores WHERE Genero = 'M'

--9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome 
FROM Atores WHERE Genero = 'F' 
ORDER BY PrimeiroNome

--10 - Buscar o nome do filme e o g�nero
SELECT F.Nome, G.Genero
FROM Filmes F inner join FilmesGenero FG ON F.Id = FG.IdFilme
inner join Generos G ON  FG.IdGenero = G.Id

--11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT F.Nome, G.Genero
FROM Filmes F inner join FilmesGenero FG ON F.Id = FG.IdFilme
inner join Generos G ON  FG.IdGenero = G.Id
WHERE G.Genero = 'Mist�rio'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F INNER JOIN ElencoFilme EF ON EF.IdFilme = F.Id 
INNER JOIN Atores A ON EF.IdAtor = A.Id



