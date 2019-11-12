
	create table produtos
	(
	codigo int,
	nome varchar(45),
	comissao float,
	valor float
	)
	create table vendedores
	(
	codico int,
	nome varchar(45),
	comissao float,
	)
	create table cliente
	(
	codigo int,
	nome varchar(40)
	)
	create table vendas
	(
	nrovenda int,
	Data smalldatetime,
	cliente int ,
	valortotal float
	)
	create table vendasitems
	(
	nrovenda int,
	nroitem int ,
	produto int,
	valorvenda float,
	qtde int
	)
	create table commissao
	(
	momento smalldatetime,
	vendedor int,
	venda int,
	tipocomissao varchar(10),
	valorcomissao float,
	statuscomissao varchar(10),
	dtpagamento smalldatetime
	)


ALTER TABLE comissao ADD CONSTRAINT vendedor_fk PRIMARY KEY (coluna1,); 

create trigger trigger01 on produtos
for insert,delete,update

as 
begin
 if(exists (select codigo from inserted)) 
