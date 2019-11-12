drop table Aluno

create table Aluno  
(
rm INT not null,
nome varchar(120) not null
) 

create table Log
(
momento datetime not null,
descricao varchar(200)
)

/* trigger insert */

alter trigger trigger3 on Aluno 
for insert,delete,update
as
begin
	if(exists (select 1 from inserted))
		begin
			insert into Log
			select getdate(),'FOI INSERIDO O RM ' +ltrim(str(rm))+ ' NOME  ' +nome from inserted
		end
	else
		begin
			insert into Log
			select GETDATE(),'FOI DELETADO  O RM ' +ltrim(str(rm))+ 'NOME ' +nome from deleted 
		end
		if(exists(select 1 from inserted)) 
		begin
		  insert into Log
		  select GETDATE(),'FOI ALTERADO O  RM  '+ltrim(str(rm))+ 'NOME ' +nome from deleted
		end
end

insert into  Aluno (rm,nome)
values (5,'carlos')
delete from Aluno where rm = 3

update Aluno
set rm=3
where rm=5


select *from Aluno
select *from Log


sp_helptrigger Aluno

delete
from Aluno
where rm=3





/* trigger delete 
create trigger trigger2 on log 
for delete

as
begin



end

/* trigger update 

create trigger trigger3 on log 
for update

as
begin



end


