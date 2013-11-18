     // Дана матрица размера M x N. 
// Удалить столбец, 
// содержащий максимальный элемент матрицы. 
program Matrix64;
uses PT4;
var
K,maxI,maxJ,j,i,M,N,num:integer;
a: array [1..10,1..10] of real;
temp:real;
begin
Task('Matrix64');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
maxI:=1;
maxJ:=1;
 for i:=1 to M  do
 begin
 for j:=1 to N do
   begin
   if a[maxI,maxJ]<a[i,j] then
   begin
   maxI:=I;
   maxJ:=J;
   end;
   end;
end;
k:=maxI;
 for i:=K+1 to N  do
 begin
 for j:=1 to M do
   begin
   temp:=a[j,i-1];
   a[j,i-1]:=a[j,i];
   a[j,i]:=temp;
   end;
end;
dec(N);
// ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
