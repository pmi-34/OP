     // Дана матрица размера M x N. 
// Найти максимальный среди минимальных 
// элементов ее строк. 
program Matrix27;
uses PT4;
var
Min,max,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
begin
Task('Matrix27');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
Min:=A[1,1];
 for j:=1 to N do
 begin
 if min>a[1,j] then min:=a[1,j];
 end;
Max:=min;
for i:=2 to M  do
 begin
 min:=a[i,1];
 for j:=2 to N do
 begin
 if min>a[i,j] then min:=a[i,j];
 end;
 if max<min then max:=min
end;
// Ответ 
writeln;
writeln('Ответ');
writeln('максимальный среди минимальных элементов строк ',max);
end.
