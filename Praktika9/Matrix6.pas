     // Даны целые положительные числа M, N, 
// число D и набор из N чисел. 
// Сформировать матрицу размера M x N, 
// у которой первая строка совпадает с 
// исходным набором чисел, 
// а элементы каждой следующей строки 
// равны соответствующему элементу 
// предыдущей строки, умноженному на D 
// (в результате каждый столбец матрицы 
// будет содержать элементы геометрической прогрессии). 
program Matrix6;
uses PT4;
var
D,j,i,M,N:integer;
A: array [1..10,1..10] of integer;
MM:array [1..10] of integer;
begin
Task('Matrix6');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите ',N,' чисел.');
for i:=1 to N do  read(MM[i]);
writeln('Введите число D');
 readln(D);
// Решение 
 for j:=1 to N do a[1,j]:=MM[j];
 for i:=2 to M do begin
 for j:=1 to N do a[i,j]:=A[i-1,j]*D;
 end;
// Ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
 writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
 
