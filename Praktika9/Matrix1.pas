     // Даны целые положительные числа M и N. 
// Сформировать целочисленную матрицу размера M и N, 
// у которой все элементы I-й строки 
// имеют значение 10·I (I = 1, …, M). 
program Matrix1;
uses PT4;
var
j,i,M,N:integer;
a: array [1..10,1..10] of integer;
begin
Task('Matrix1');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(N); readln(M);
// Решение 
 for i:=1 to N do begin
 for j:=1 to M do a[i,j]:=i*10;
 end;
// Ответ 
writeln;
writeln('Ответ');
 for i:=1 to N do begin
 writeln;
 for j:=1 to M do write(a[i,j],' ');
 end;
end.
 
