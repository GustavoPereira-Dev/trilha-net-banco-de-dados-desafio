-- 1
SELECT Nome,Ano from Filmes
-- 2
SELECT Nome, Ano FROM Filmes ORDER BY ano ASC;
-- 3
SELECT Nome, Ano, Duracao FROM Filmes Where Nome = "De Volta Para o Futuro"
-- 4
SELECT Nome, Ano, Duracao FROM Filmes Where Ano = 1997
-- 5
SELECT Nome, Ano, Duracao FROM Filmes Where Ano > 2000
-- 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE duracao BETWEEN 100 AND 150 ORDER BY duracao ASC;
-- 7
SELECT Ano, COUNT(*) AS Quantidade FROM filmes GROUP BY Ano ORDER BY Duracao DESC;
-- 8
SELECT * FROM Atores WHERE Genero = "M"
-- 9
SELECT * FROM Atores WHERE Genero = "F" ORDER BY PrimeiroNome
-- 10
SELECT f.nome AS Nome, g.nome AS Genero FROM Filmes f JOIN FilmesGeneros fg ON f.Id = fg.IdFilme JOIN Genero g ON fg.IdGenero = g.Id;
-- 11
SELECT f.nome AS Nome, g.nome AS Genero FROM Filmes f JOIN FilmesGeneros fg ON f.Id = fg.IdFilme JOIN Genero g ON fg.IdGenero = g.Id WHERE g.nome = 'Mistério';
-- 12
SELECT f.nome AS Nome, a.PrimeiroNome, a.UltimoNome, e.Papel FROM Filmes f JOIN ElencoFilme e ON f.Id = e.IdFilme JOIN Atores a ON e.IdAutor = a.Id;
