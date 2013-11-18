     // Дана матрица размера M x N 
// и целое число K (1 <= K <= N). 
// Найти сумму и произведение 
// элементов K-го столбца данной матрицы. 
program Matrix18;
uses PT4;
var
Sum,Pro,j,i,M,N,K:integer;
a: array [1..10,1..10] of integer;
begin
Task('Matrix18');
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
 for j:=1 to M do
 begin
Sum:=sum+a[j,k];
Pro:=pro*a[j,k];
 end;
// Ответ 
writeln;
writeln('Ответ');
writeln('Сумма = ',Sum);
writeln('Произведение = ',Pro);
end.
 
