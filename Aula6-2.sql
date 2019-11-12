
create procedure ex06 @codigo int , @nome varchar(40),@nascimento smalldatetime 
as
begin
    begin
	if (@codigo IS NULL)
	if exists (select 1 from tabelaA where codigo=@codigo)
		insert into tabelaA  VALUES ((select  ISNULL(Max(Codigo),0)+1 from tabelaA),@nome,@nascimento)
    end
		declare @comando varchar (500)
	begin 
		select @comando='update tabelaA set Nome=@nome,codigo=@codigo,Nascimento=@nascimento'
			end
	begin
		if(@codigo IS NULL)
			if exists (select 1 from tabelaA where codigo=@codigo)
				raiserror('codigo',16,1)
					select @comando= @comando + 'Nome ='+ char(39)+@nome+char(39)
		end
	begin 
	if exists (select 1 from tabelaA where codigo=@codigo)
	raiserror('codigo',16,1)
	if(LEN(@comando )>20)
			select @comando= @comando + 'where codigo =' +STR(@codigo)
	end
	exec @comando
	begin 	    
	if (@codigo IS NULL)
	begin
	if exists (select 1 from tabelaA where codigo=@codigo)
	begin
		raiserror('codigo',16,1)
	end
		update  tabelaA set Nome=@nome,Nascimento=@nascimento where Codigo=@codigo; 
		end
	end
	        
			select @comando='update tabelaA set Nome=@nome,codigo=@codigo,Nascimento=@nascimento';
				if(@codigo IS NULL)
			select @comando= @comando + 'Nome ='+ char(39)+@nome+char(39)
				if(LEN(@comando )>20)
			select @comando= @comando + 'where codigo =' +STR(@codigo)
	                
	else
	      begin     
		 if(@nome is null and @nascimento is null)
		 else 
		 begin
		 if exists (select 1 from tabelaA where codigo=@codigo)
		raiserror('codigo',16,1)
		delete from tabelaA where codigo =@codigo
		end
		end
		/*else 
	begin
	if(@codigo is null)

	select
	end */
	

	
	
/*
INSERT INTO NOMEDATABELA (LISTA DE COLUNAS DA TABELA) VALUES (LISTA DE VALORES)

UPDATE NOMEDATABELA SET COLUNA = VALOR, COLUNA = VALOR WHERE CONDICAO*/