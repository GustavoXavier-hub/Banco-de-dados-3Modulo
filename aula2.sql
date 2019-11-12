create database aula

create table tabela_01
(
momento datetime not null,
acao varchar(50) not null 
)


DECLARE @result float;
DECLARE @laco int;

SELECT @laco = 1

while(@laco <=25)
begin

	select @result=@result/5

	if (@result =1 or @result=5)
	begin
		insert into tabela_01 values (GETDATE(),STR (@result)+' e o resultado de' +STR(@laco)+'/5'
	end

	if (@result=2)
	begin 
		insert into  tabela_01 values (GETDATE(),'O resultado foi' +STR(@result)
	

	select @laco=@laco+1
	end