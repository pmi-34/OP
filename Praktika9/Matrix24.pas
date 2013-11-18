     // Дана матрица размера M x N. 
// В каждом столбце матрицы 
// найти максимальный элемент. 
program Matrix24;
uses PT4;
var
max,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
begin
Task('Matrix24');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
writeln;
writeln('Ответ');
 for i:=1 to N  do
 begin
max:=a[i,j];
 for j:=1 to m do
 begin
if Max < a[J,I] then max:=a[J,I];
end;
writeln('максимальный элемент ',i,' столбца : ',max);
 end;
end.
