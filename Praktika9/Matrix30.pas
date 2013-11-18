     // Дана матрица размера M x N. 
// В каждом ее столбце 
// найти количество элементов, 
// больших среднего арифметического 
// всех элементов этого столбца. 
program Matrix30;
uses PT4;
var
Min,j,i,M,N:integer;
a: array [1..10,1..10] of real;
CRed:real;
begin
Task('Matrix30');
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
for i:=1 to N  do
 begin
CRed:=0;
Min:=0;
 for j:=1 to M do CRed:=CRed+a[j,i];
 CRed:=CRed/m;
 for j:=1 to M do
 begin
if CRed>a[j,i] then inc(min);
 end;
writeln(i,') столбец: ',min );
end;
end.
