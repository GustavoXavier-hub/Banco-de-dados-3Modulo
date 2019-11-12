create function teste (@datainico smalldatetime)

returns int

as 
begin

declare @diasuteis int;


if(@datainico<=GETDATE())
begin

  datepart(DW,@datainicio)

end

end