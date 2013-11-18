     // Дана матрица размера M x N. 
// Элемент матрицы называется ее локальным минимумом, 
// если он меньше всех окружающих его элементов. 
// Заменить все локальные минимумы данной матрицы на нули. 
// При решении допускается использовать вспомогательную матрицу. 
program Matrix74;
uses PT4;
var
j,i,M,N:integer;
a: array [1..10,1..10] of real;
b: array [1..10,1..10] of real;
begin
Task('Matrix74');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
if (a[1,1] < a[1,2]) and
   (a[1,1] < a[2,1]) and
   (a[1,1] < a[2,2]) then b[1,1]:=0
else b[1,1]:=a[1,1];
if (a[M,1] < a[M,2])   and
   (a[M,1] < a[M-1,1]) and
   (a[M,1] < a[M-1,2]) then b[M,1]:=0
else b[M,1]:=a[M,1];
if  (a[1,N] < a[2,N])   and
    (a[1,N] < a[1,N-1]) and
    (a[1,N] < a[2,N-1]) then b[1,N]:=0
else b[1,N]:=a[1,N];
if (a[M,N] < a[M,N-1]) and
   (a[M,N] < a[M-1,N]) and
   (a[M,N] < a[M-1,N-1]) then b[M,N]:=0
else b[M,N]:=a[M,N];
for j:=2 to N-1 do
begin
if  (a[1,j] < a[1,j-1]) and
    (a[1,j] < a[1,j+1]) and
    (a[1,j] < a[2,j-1]) and
    (a[1,j] < a[2,j])   and
    (a[1,j] < a[2,j+1])    then b[1,j]:=0
else b[1,j]:=a[1,j];
if  (a[M,j] < a[M,j-1])   and
    (a[M,j] < a[M,j+1])   and
    (a[M,j] < a[M-1,j-1]) and
    (a[M,j] < a[M-1,j])   and
    (a[M,j] < a[M-1,j+1])    then b[M,j]:=0
else b[M,j]:=a[M,j];
end;
for i:=2 to M-1 do
begin
if  (a[i,1] < a[i-1,1]) and
    (a[i,1] < a[i+1,1]) and
    (a[i,1] < a[i-1,2]) and
    (a[i,1] < a[i,2])   and
    (a[i,1] < a[i+1,2])    then b[i,1]:=0
else b[i,1]:=a[i,1];
if  (a[i,N] < a[i-1,N]) and
    (a[i,N] < a[i+1,N]) and
    (a[i,N] < a[i-1,N-1]) and
    (a[i,N] < a[i,N-1])   and
    (a[i,N] < a[i+1,N-1]) then b[i,N]:=0
else b[i,N]:=a[i,N];
end;

for i:=2 to M-1 do begin
for j:=2 to N-1 do begin
if  (a[i,j] < a[i-1,j-1]) and
    (a[i,j] < a[i-1,j]) and
    (a[i,j] < a[i-1,j+1]) and
    (a[i,j] < a[i,j-1])   and
    (a[i,j] < a[i,j+1])   and
    (a[i,j] < a[i+1,j-1])   and
    (a[i,j] < a[i+1,j])   and
    (a[i,j] < a[i+1,j+1]) then b[i,j]:=0
else b[i,j]:=a[i,j];
 end; end;
 
for i:=1 to M do begin
for j:=1 to N do begin
    a[i,j]:=b[i,j];
 end; end;
// ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
