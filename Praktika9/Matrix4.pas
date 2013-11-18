     // Даны целые положительные числа M, N 
// и набор из N чисел. 
// Сформировать матрицу размера M x N, 
// у которой в каждой строке содержатся 
// все числа из исходного набора (в том же порядке). 
program Matrix4;
uses PT4;
var
j,i,M,N:integer;
A: array [1..10,1..10] of integer;
MM:array [1..10] of integer;
begin
Task('Matrix4');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите ',N,' чисел.');
for i:=1 to N do  read(MM[i]);
// Решение 
 for i:=1 to M do begin
 for j:=1 to N do a[i,j]:=MM[j];
 end;
// Ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
 writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
 
