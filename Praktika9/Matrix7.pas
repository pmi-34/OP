     // Дана матрица размера M x N 
// и целое число K (1 <= K <= M). 
// Вывести элементы K-й строки данной матрицы. 
program Matrix7;
uses PT4;
var
K,j,i,M,N:integer;
A: array [1..10,1..10] of integer;
begin
Task('Matrix7');
// Ввод данных 
writeln('Введите числа (строки) M (M<=10) и (столбцы) N (N<=10)');
 read(M); readln(N);
 writeln('целое число K (1 <= K <= M)');
 readln(K);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Ответ 
writeln;
writeln('Ответ');
 writeln;
 for j:=1 to N do write(a[k,j],' ');
end.
 
