     // Дана матрица размера M x N. 
// Преобразовать матрицу, 
// поменяв местами минимальный 
// и максимальный элемент в каждом столбце. 
program Matrix50;
uses PT4;
var
min,max,j,i,M,N:integer;
a: array [1..10,1..10] of real;
temp:real;
begin
Task('Matrix50');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов (значения от 0 до 100) ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
 for i:=1 to N do
 begin
 min:=1; max:=1;
 for j:=1 to M do
   begin
   if a[min,i]>a[j,i] then min:=j;
   if a[max,i]<a[j,i] then max:=j;
   end;
   temp:=a[min,i];
   a[min,i]:=a[max,i];
   a[max,i]:=temp;
end;
// ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
