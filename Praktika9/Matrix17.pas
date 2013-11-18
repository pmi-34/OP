     // Дана матрица размера M x N 
// и целое число K (1 <= K <= M). 
// Найти сумму и произведение 
// элементов K-й строки данной матрицы. 
program Matrix17;
uses PT4;
var
Sum,Pro,j,i,M,N,K:integer;
a: array [1..10,1..10] of integer;
begin
Task('Matrix17');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(N); readln(M);
writeln('Введите число K');
 read(K);
Sum:=0;
Pro:=1;
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
 for j:=1 to N do
 begin
Sum:=sum+a[K,j];
Pro:=pro*a[K,j];
 end;
// Ответ 
writeln;
writeln('Ответ');
writeln('Сумма = ',Sum);
writeln('Произведение = ',Pro);
end.
 
