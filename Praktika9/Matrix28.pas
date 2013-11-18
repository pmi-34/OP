     // Дана матрица размера M x N. 
// Найти минимальный среди 
// максимальных элементов ее столбцов. 
program Matrix28;
uses PT4;
var
Min,max,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
begin
Task('Matrix28');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
Max:=A[1,1];
 for j:=1 to m do
 begin
 if max<a[j,1] then max:=a[j,1];
 end;
Min:=max;
for i:=2 to n  do
 begin
 max:=a[1,i];
 for j:=2 to m do
 begin
 if max<a[j,i] then max:=a[j,i];
 end;
 if min>max then min:=max;
end;
// Ответ 
writeln;
writeln('Ответ');
writeln('минимальный среди максимальных элементов столбцов ',min);
end.
