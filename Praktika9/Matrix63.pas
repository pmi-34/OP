     // Дана матрица размера M x N. 
// Удалить строку, 
// содержащую минимальный элемент матрицы. 
program Matrix63;
uses PT4;
var
K,minI,minJ,j,i,M,N,num:integer;
a: array [1..10,1..10] of real;
temp:real;
bol:boolean;
begin
Task('Matrix63');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов (значения от 0 до 100) ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
minI:=1;
minJ:=1;
 for i:=1 to M  do
 begin
 for j:=1 to N do
   begin
   if a[minI,minJ]>a[i,j] then
   begin
   minI:=I;
   minJ:=J;
   end;
   end;
end;
k:=minI;
 for i:=K+1 to M  do
 begin
 for j:=1 to N do
   begin
   temp:=a[i-1,j];
   a[i-1,j]:=a[i,j];
   a[i,j]:=temp;
   end;
end;
dec(M);
// ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
