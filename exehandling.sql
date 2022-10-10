declare @y int ;

begin try
set @y=13;
if @y % 2 <> 0 

begin

throw 50001,'number not even', 3
end
print 'number is even'+ cast(@y as varchar(10));
end try
begin catch
select ERROR_MESSAGE();
print 'exception happend';
end catch