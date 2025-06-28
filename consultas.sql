SELECT Id, Nome, Ano FROM Filmes;

SELECT Id, Nome, Ano, Duracao from Filmes order by Ano ASC;

select Id, Nome, Ano, Duracao from Filmes where upper(nome) = upper('De Volta para o futuro');

SELECT * FROM Filmes where Ano = 1997;

SELECT * FROM Filmes where Ano > 2000;

SELECT * FROM Filmes where Duracao BETWEEN 100 AND 150

SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

SELECT 
	f.Nome, 	
    g.Genero 
FROM Filmes f 
JOIN FilmesGenero fg on fg.IdFilme = f.Id 
JOIN Generos g ON g.Id = fg.IdGenero

SELECT 
	f.Nome, 	
    g.Genero 
FROM Filmes f 
JOIN FilmesGenero fg on fg.IdFilme = f.Id 
JOIN Generos g ON g.Id = fg.IdGenero
WHERE UPPER(g.Genero) = upper('Mistério');

SELECT 
	f.Nome,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM Filmes f 
JOIN ElencoFilme ef on ef.IdFilme = f.Id
JOIN Atores a ON a.Id = ef.IdAtor