create function teste (@var1 int, @var2 int, @var3 int,@var4 int)
returns int
as

begin 
declare @resultado int

select @resultado = (@var1+@var2+@var3+@var4) 


return @resultado 

end


select dbo.teste(1,2,3,4)