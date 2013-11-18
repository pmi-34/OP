     // Даны целые положительные числа M и N. 
// Сформировать целочисленную матрицу размера M x N, 
// у которой все элементы J-го столбца 
// имеют значение 5·J (J = 1, …, N). 
program Matrix2;
uses PT4;
var
j,i,M,N:integer;
a: array [1..10,1..10] of integer;
begin
Task('Matrix2');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
// Решение 
 for i:=1 to M do begin
 for j:=1 to N do a[i,j]:=j*5;
 end;
// Ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
 writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.

 
