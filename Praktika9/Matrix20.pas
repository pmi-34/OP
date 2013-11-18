     // Дана матрица размера M x N. 
// Для каждого столбца матрицы 
// найти произведение его элементов. 
program Matrix20;
uses PT4;
var
Pro,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
begin
Task('Matrix20');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(N); readln(M);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
writeln;
writeln('Ответ');
 for i:=1 to N do
 begin
Pro:=1;
 for j:=1 to M do
 begin
Pro:=Pro*a[J,I];
end;
writeln('Произведение ',i,' стобца : ',Pro);
 end;
end.
