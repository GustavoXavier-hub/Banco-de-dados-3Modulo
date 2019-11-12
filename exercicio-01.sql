create function teste (@data smalldatetime)
 
 
 returns int
 as
 begin
  

  
	declare @anos int;
	declare @meses int;
	declare @dias int;

 select @anos=DATEDIFF(YY,@anos,GETDATE())

 select @meses=DATEDIFF(MM,DATEADD(YY,@anos,@data),GETDATE())

 select @dias=DATEDIFF(DD,DATEADD(MM,@meses,DATEADD(YY,@anos,@data)),GETDATE())

 return (STR (@anos)+'anos')+STR((@meses)+'meses')+STR((@dias)+'dias')


 end


