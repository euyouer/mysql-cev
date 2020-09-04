use cadastro;
desc gafanhotos;

alter table gafanhotos
add cursopreferido int;

alter table gafanhotos
add foreign key(cursopreferido)
references cursos(idcurso);

select *
from gafanhotos;

update gafanhotos
set cursopreferido = '6'
where id = '1';

delete from cursos
where idcurso = 6;

-- ------------------------------------------------------------------------------------------------------------------------------
select nome, 
	cursopreferido
from gafanhotos;

select nome, 
	ano
from cursos;

-- Como juntar os dois?
select gafanhotos.nome,
    cursos.nome,
    cursos.ano
from gafanhotos
join cursos
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome ;

-- Apelidando
select g.nome,
    c.nome,
    c.ano
from gafanhotos as g
inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome ;

-- Dando um left join
select g.nome,
    c.nome,
    c.ano
from gafanhotos as g left join cursos as c
on c.idcurso = g.cursopreferido;

-- Dando um right join
select g.nome,
    c.nome,
    c.ano
from gafanhotos as g right outer join cursos as c
on c.idcurso = g.cursopreferido;