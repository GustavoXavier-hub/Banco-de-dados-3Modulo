create database aula3

create table tabela02
(
operacao varchar(5),
nrocalculado float,
laco int,
resultado float
)

declare @laco int

declare @numero float

select @laco=1, @numero = 0

while(@laco<20)
begin 

select @numero =RAND(@laco*9551)*100

insert into tabela02 values( 'mutiplicacao',@numero,@laco,(@numero * @laco))
insert into tabela02 values( 'soma',@numero,@laco,(@numero * @laco))
insert into tabela02 values( 'subtracao',@numero,@laco,(@numero * @laco))

if(@numero>@laco)

insert into tabela02 values( 'divisao',@numero,@laco, (@numero / @laco))

select @laco=@laco+1

end 

select* from tabela02



