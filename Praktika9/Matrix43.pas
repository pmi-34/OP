     // Дана матрица размера M x N. 
// Найти количество ее столбцов, 
// элементы которых упорядочены по убыванию. 
program Matrix43;
uses PT4;
var
otvet,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
bol:boolean;
begin
Task('Matrix43');
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

for i:=1 to N  do
 begin
bol:=true;
 for j:=2 to M do
   begin
   if a[j,i]<=a[j-1,i] then bol:=false;
   end;
if bol then inc(otvet);
 end;
// ответ 
writeln;
writeln('Ответ');
writeln('Количество столбцов ',otvet );
end.
