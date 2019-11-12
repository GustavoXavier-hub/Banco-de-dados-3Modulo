create function calcmedia (@nota1 int,@nota2 int ,@nota3 int,@nota4 int)
returns varchar
as 
begin
	declare @resultadoMedia varchar (11)
	select @resultadoMedia =(@nota1+@nota2+@nota3+@nota4)/4

	if(@resultadoMedia>55)
	begin
	select *from notas as n
	inner join alunos as a
	on   n.MATERIA= a.STATUS

	end
	else
	begin
		if(@resultadoMedia>=40 AND @resultadoMedia<55)
		begin
		 select *from alunos as af
		 inner join materias as m 
		 on af.NOME=m.CURSO  
		end
		else 
		begin
	    select *from notas as n
		inner join  progressao as p
		on n.MENCAO1= p.SITUACAO
		end
	end
end





