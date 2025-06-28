-- 1 - Buscar o nome e ano dos filmes
SELECT Id, Nome, Ano FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Id, Nome, Ano, Duracao from Filmes order by Ano ASC;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Id, Nome, Ano, Duracao from Filmes where upper(nome) = upper('De Volta para o futuro');

-- 4 - Buscar os filmes lançados em 1997
SELECT * FROM Filmes where Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM Filmes where Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM Filmes where Duracao BETWEEN 100 AND 150

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero
SELECT 
	f.Nome, 	
    g.Genero 
FROM Filmes f 
JOIN FilmesGenero fg on fg.IdFilme = f.Id 
JOIN Generos g ON g.Id = fg.IdGenero

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
	f.Nome, 	
    g.Genero 
FROM Filmes f 
JOIN FilmesGenero fg on fg.IdFilme = f.Id 
JOIN Generos g ON g.Id = fg.IdGenero
WHERE UPPER(g.Genero) = upper('Mistério');

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
	f.Nome,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM Filmes f 
JOIN ElencoFilme ef on ef.IdFilme = f.Id
JOIN Atores a ON a.Id = ef.IdAtor