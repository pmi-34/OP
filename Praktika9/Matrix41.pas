     // Дана целочисленная матрица размера M x N. 
// Найти номер первого из ее столбцов, 
// содержащих максимальное количество одинаковых элементов. 
program Matrix41;
uses PT4;
var
t,otvet,k,temp,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
begin
Task('Matrix41');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов (значения от 0 до 100) ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
otvet:=0;
t:=0;
for i:=1 to N  do
 begin
temp:=0;
 for j:=1 to M-1 do
   begin
 for k:=j+1 to M do
   begin
   if a[j,i]=a[k,i] then inc(temp);
   end;
   end;
if temp>otvet then begin t:=i; otvet:=temp;end;
 end;
// ответ 
writeln;
writeln('Ответ');
writeln('Номер столбца ',t );
end.
