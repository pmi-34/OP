     // Даны целые положительные числа M, N, 
// число D и набор из M чисел. 
// Сформировать матрицу размера M x N, 
// у которой первый столбец совпадает 
// с исходным набором чисел, 
// а элементы каждого следующего столбца 
// равны сумме соответствующего элемента 
// предыдущего столбца и числа D 
// (в результате каждая строка матрицы 
// будет содержать элементы арифметической прогрессии). 
program Matrix5;
uses PT4;
var
D,j,i,M,N:integer;
A: array [1..10,1..10] of integer;
MM:array [1..10] of integer;
begin
Task('Matrix5');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите ',M,' чисел.');
for i:=1 to M do  read(MM[i]);
writeln('Введите число D');
 readln(D);
// Решение 
 for i:=1 to M do begin
 for j:=1 to N do a[i,j]:=MM[i]+D*(j-1);
 end;
// Ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
 writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
 
