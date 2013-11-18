     // Дана целочисленная матрица размера M x N. 
// Найти номер первой из ее строк, 
// содержащих равное количество 
// положительных и отрицательных элементов 
// (нулевые элементы матрицы не учитываются). 
// Если таких строк нет, то вывести 0. 
program Matrix32;
uses PT4;
var
otvet, minus,plus,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
begin
Task('Matrix32');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
otvet:=0;
for i:=1 to M  do
 begin
 minus:=0;
plus:=0;
 for j:=1 to N do
 begin
      if a[i,j]>0 then inc(Plus);
      if a[i,j]<0 then inc(minus);
 end;
 if (Plus = minus) and (otvet = 0) then otvet:=i;
 end;
writeln;
writeln('Ответ');
writeln('Номер строки ',otvet );
end.
