     // Дана матрица размера M x N. 
// В каждой строке матрицы 
// найти минимальный элемент. 
program Matrix23;
uses PT4;
var
min,j,i,M,N:integer;
a: array [1..10,1..10] of integer;

begin
Task('Matrix23');
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
 for i:=1 to M  do
 begin
min:=a[i,j];
 for j:=1 to n do
 begin
if Min > a[i,j] then min:=a[i,j];
end;
writeln('минимальный элемент ',i,' строки : ',min);
 end;
end.
