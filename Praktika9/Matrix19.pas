     // Дана матрица размера M x N 
// Для каждой строки матрицы 
// найти сумму ее элементов. 
program Matrix19;
uses PT4;
var
Sum,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
begin
Task('Matrix19');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(N); readln(M);
Sum:=0;
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
writeln;
writeln('Ответ');
 for i:=1 to M do
 begin
Sum:=0;
 for j:=1 to N do
 begin
Sum:=sum+a[i,J];
end;
writeln('сумма ',i,' строки : ',Sum);
 end;
end.
