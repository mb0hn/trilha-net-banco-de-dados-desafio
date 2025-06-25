-- 1
select
	Nome, 
	Ano 
from Filmes

-- 2
select 
	Nome, 
	Ano, 
	Duracao
from Filmes 
order by Ano

-- 3
select 
	Nome, 
	Ano, 
	Duracao
from Filmes 
where Nome = 'De volta para o futuro'

-- 4
select 
	Nome, 
	Ano, 
	Duracao
from Filmes 
where Ano = 1997

-- 5
select 
	Nome, 
	Ano, 
	Duracao
from Filmes 
where Ano > 2000

-- 6
select 
	Nome, 
	Ano, 
	Duracao
from Filmes 
where Duracao > 100 and Duracao < 150
order by Duracao

-- 7 
select 
	Ano, 
	count(Ano) Quantidade
from Filmes
group by Ano
order by Quantidade DESC

-- 8
select 
*
from Atores
where Genero = 'M'

-- 9 
select 
*
from Atores
where Genero = 'F'
order by PrimeiroNome

-- 10 
select 
Nome, Genero
from Filmes
inner join FilmesGenero fg on fg.IdFilme = Filmes.Id
inner join Generos gn on gn.Id = fg.IdGenero

-- 11
select 
Nome, Genero
from Filmes
inner join FilmesGenero fg on fg.IdFilme = Filmes.Id
inner join Generos gn on gn.Id = fg.IdGenero
where gn.Id = 10

-- 12
select 
Nome, PrimeiroNome, UltimoNome, Papel
from Filmes
inner join ElencoFilme ef on ef.IdFilme = Filmes.Id
inner join Atores at on at.Id = ef.IdAtor