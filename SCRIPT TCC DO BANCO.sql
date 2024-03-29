create database FAST_201902

/*criacao da tabela cliente */
create table cliente
(id_clie int identity not null primary key,
nm_clie  varchar(45) not null,
dat_nas_clie date not null,
tele_cont_clie numeric(7,5) not null,
end_clie varchar (45) not null,
sex_clie varchar (20) not null);
go

/*criacao da tabela tp_pgto */
create table tp_pgto
(id_tp_pgto int identity not null primary key,
dsc_tp_pgto varchar(15));  
  
go
/*criacao da tabela tp_serv */
create table tp_serv
(id__tp_serv int identity not null primary key,
dsc_tp_serv varchar(15)); 

go
/*criacao da tabela tp_pessoa */
create table tp_pessoa
(id_tp_pessoa int identity not null primary key,
dsc_tp_pessoa varchar(15)); 

go
/*criacao da tabela empresa */
create table empresa
(id_emp int identity not null primary key,
nm_emp varchar(20) not null,
cnpj_emp numeric(7,5)   not null);

go
/*criacao da tabela pessoa */
create table pessoa 
(id_func int identity not null primary key,
id_tp_pessoa int constraint tp_pessoa_id_fk02 references tp_pessoa (id_tp_pessoa),
id_emp  int  not null  constraint empresa_id_fk01   references empresa (id_emp),
nm_func varchar(20) not null,
dat_nas_func date not null,
rg_func numeric (7,5),
cpf_func numeric (8,8),
cp_func  numeric (6,0));
go

/*criacao da tabela prestador */
create table prestador
(id_prestador int identity not null primary key,
id_func int constraint pessoa_id_fk03 references pessoa (id_func),
cnh_prestador numeric (7,2));
 
 go

 /*criacao da tabela veiculo */
 create table veiculo
 (id_ve int identity not null primary key,
 id_prestador int constraint prestador_id_fk04 references prestador (id_prestador),
 pl_ve numeric (7,5) not null,
 cor_ve varchar (20) not null,
 marca_ve varchar(20) not null,
 doc_ve  numeric (8,2) not null,
 modelo_ve varchar (45) not null,
 ano_ve date not null,
 km_ve numeric (8,5) not null,
 status_ve varchar(45) not null,
 rastreador_ve varchar (20) not null,
 cod_rastreador_ve int not null);
 
 go
 /*criacao da tabela contrato_servi�o */
 create table contrato_servi�o
 (id__tp_serv int constraint tp_serv_fk05 references tp_serv (id__tp_serv),
 id_tp_pgto int constraint tp_pgto_fk06 references tp_pgto (id_tp_pessoa),
 id_clie int constraint cliente_fk07 references cliente (id_clie),
 id_prestador int constraint prestador_id_fk08 references prestador (id_prestador),
 cubagem_serv numeric (7,4) not null,
 dat_serv date not null,
 vl_pgto numeric (10,5)not null );
 go
 
 /* select das tabelas */
 select *from cliente
 go
 select *from tp_pgto
 go
 select *from tp_serv
 go
 select *from tp_pessoa
 go
 select *from empresa
 go
 select *from pessoa
 go
 select *from prestador
 go
 select *from veiculo
 go

 /* insert da tabela cliente */

  insert into cliente(nm_clie,dat_nas_clie,tele_cont_clie,end_clie,sex_clie)
       values ('Carlos Roberto',26-08-2019,8088-8888,'parque edu chaves','Masculino');
	          
 
 insert into tp_pgto  (,tp_pgto)
values ( 'Debito'),
       ('Credito');

insert into tp_pessoa (id_tp_pessoa,tp_pessoa)
values ('Juridica'),	   
 
 
 


/* drop das tabelas */
drop table cliente

drop table tp_pgto

drop  table tp_serv

drop  table tp_pessoa

drop table empresa

drop table pessoa 

drop table prestador 

drop table prestador 

drop table veiculo

drop table contrato_servi�o

/* SERVIDOR E USUARIO E SENHA DO BANCO DO TCC 
172.16.48.10
Usu�rio: fastmoving
Senha: m0v1ngf@st */