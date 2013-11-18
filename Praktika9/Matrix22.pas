     // Дана матрица размера M x N. 
// Для каждого столбца матрицы 
// с четным номером (2, 4, …) 
// найти сумму его элементов. 
// Условный оператор не использовать. 
program Matrix22;
uses PT4;
var
j,i,M,N:integer;
a: array [1..10,1..10] of integer;
Sum:real;
begin
Task('Matrix22');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
writeln;
writeln('Ответ');
 for i:=1 to N div 2 do
 begin
Sum:=0;
 for j:=1 to M do
 begin
Sum:=Sum+a[J,I*2];
end;
writeln('среднее арифметическое ',i*2,' столбца : ',Sum/M);
 end;
end.
