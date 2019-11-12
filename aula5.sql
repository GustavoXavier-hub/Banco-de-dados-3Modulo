create procedure teste 
as 
begin
	select RM,MATERIA,avg(MENCAO) as MEDIA
	into #temp
	from notas
	GROUP BY RM,MATERIA having AVG(MENCAO) >= 65

	insert into progressao
	select RM, GETDATE(), MATERIA, MEDIA, 'APROVADO'
	from #temp
end


SELECT * FROM progressao