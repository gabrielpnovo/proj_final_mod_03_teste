select * from cursos;
select * from equipe;
select * from modulos;
select * from rel_mod_curso;
select * from alocacoes_prof;

select * from
rel_mod_curso left join alocacoes_prof
on rel_mod_curso.ID_MODULO = alocacoes_prof.ID_MODULO;

#qtd profs por modulo
select cursos.nome as nome_curso, modulos.nome as nome_modulo, count(t.matricula) qtd_profs from
rel_mod_curso inner join cursos
on rel_mod_curso.id_curso = cursos.id_curso
left join modulos
on rel_mod_curso.id_modulo = modulos.id_modulo
left join alocacoes_prof
on modulos.id_modulo = alocacoes_prof.id_modulo
left join (
	select equipe.matricula, count(*) as qtd_turmas_prof from
	turmas inner join equipe
	on turmas.matricula_tech = equipe.matricula
    where turmas.data_fim < curdate() AND data_saida is null
    group by equipe.matricula
    having qtd_turmas_prof < 2
) t
on alocacoes_prof.matricula = t.matricula
group by rel_mod_curso.id_curso, rel_mod_curso.id_modulo;

select * from
turmas inner join equipe
on turmas.matricula_tech = equipe.matricula
where turmas.data_fim < curdate() AND data_saida is null;

select * from
turmas inner join equipe
on turmas.matricula_tech = equipe.matricula
where turmas.data_fim < curdate();

#seleciona qtd turmas de cada prof
select equipe.matricula, count(*) profs_turmas from
turmas inner join equipe
on turmas.matricula_tech = equipe.matricula
group by equipe.matricula;

#profs com menos de 2 turmas
select equipe.matricula, count(*) profs_turmas from
turmas inner join equipe
on turmas.matricula_tech = equipe.matricula
group by equipe.matricula
having profs_turmas < 2;