     // Дана матрица размера M x N. 
// В каждой ее строке 
// найти количество элементов, 
// меньших среднего арифметического 
// всех элементов этой строки. 
program Matrix29;
uses PT4;
var
Min,j,i,M,N:integer;
a: array [1..10,1..10] of real;
CRed:real;
begin
Task('Matrix29');
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
for i:=1 to M  do
 begin
CRed:=0;
Min:=0;
 for j:=1 to N do CRed:=CRed+a[i,j];
 CRed:=CRed/N;
 for j:=1 to N do
 begin
if CRed>a[i,j] then inc(min);
 end;
writeln(i,') строка: ',min );
end;
end.
