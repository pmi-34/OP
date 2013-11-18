     // Дана матрица размера M x N. 
// и целое число K (1 <= K <= N). 
// Удалить столбец матрицы с номером K. 
program Matrix62;
uses PT4;
var
K,j,i,M,N,num:integer;
a: array [1..10,1..10] of real;
temp:real;
begin
Task('Matrix62');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
 writeln('Введите число K (1 <= K <= N)');
 read(K);
writeln('Введите по ',N,' элементов (значения от 0 до 100) ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
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
