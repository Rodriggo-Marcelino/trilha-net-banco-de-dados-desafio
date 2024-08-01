--1
select Nome,Ano from Filmes
--2
select Nome,Ano,Duracao from Filmes 
order by Ano 
--3
select Nome,Ano,Duracao from Filmes 
where Nome = 'De Volta para o Futuro'
--4
select Nome,Ano,Duracao from Filmes 
where Ano = 1997
--5
select Nome,Ano,Duracao from Filmes
where Ano > 2000
--6
select Nome,Ano,Duracao from Filmes 
where Duracao > 100 and Duracao < 150
order by Duracao 
--7
select ano, count(id) as Quantidade from Filmes
group by ano 
order by Quantidade desc
--8
select PrimeiroNome,UltimoNome,Genero from Atores 
where Genero = 'M'
--9
select PrimeiroNome, UltimoNome, Genero from Atores 
where Genero ='F'
order by PrimeiroNome
--10
select f.Nome as NomeFilme, g.Genero as Genero 
from Filmes f
join FilmesGenero fg on f.Id = fg.IdFilme
join Generos g on fg.IdGenero = g.Id
--11
select f.Nome as NomeFilme, g.Genero as Genero 
from Filmes f
join FilmesGenero fg on f.Id = fg.IdFilme
join Generos g on fg.IdGenero = g.Id
where g.Genero = 'Mistério'
--12
select f.Nome as NomeFilme,a.PrimeiroNome,a.UltimoNome,ef.Papel
from Filmes f
join ElencoFilme ef on f.Id = ef.IdFilme
join Atores a on ef.IdAtor = a.Id;