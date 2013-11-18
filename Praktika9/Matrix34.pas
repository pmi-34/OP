     // Дана целочисленная матрица размера M x N. 
// Найти номер последней из ее строк, 
// содержащих только четные числа. 
// Если таких строк нет, то вывести 0. 
program Matrix34;
uses PT4;
var
otvet,temp,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
begin
Task('Matrix34');
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
temp:=0;
 for j:=1 to N do
 begin
      if (a[i,j] mod 2)= 0 then inc(temp);
 end;
 if temp = N then otvet:=i;
 end;
writeln;
writeln('Ответ');
writeln('Номер строки ',otvet );
end.
