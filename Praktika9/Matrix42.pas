     // Дана матрица размера M x N. 
// Найти количество ее строк, 
// элементы которых упорядочены по возрастанию. 
program Matrix42;
uses PT4;
var
otvet,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
bol:boolean;
begin
Task('Matrix42');
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

for i:=1 to M  do
 begin
bol:=true;
 for j:=2 to N do
   begin
   if a[i,j]>=a[i,j-1] then bol:=false;
   end;
if bol then inc(otvet);
 end;
// ответ 
writeln;
writeln('Ответ');
writeln('Количество строк ',otvet );
end.
