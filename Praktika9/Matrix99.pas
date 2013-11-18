     // Дана квадратная матрица A порядка M. 
// Повернуть ее на угол 90° в положительном направлении, 
// т. е. против часовой стрелки 
// (при этом элемент A1,1 перейдет в AM,1, элемент AM,1 — в AM,M и т. д.). 
// Вспомогательную матрицу не использовать. 
program Matrix99;
uses PT4;
var
l,n,j,i,M:integer;
a: array [1..10,1..10] of real;
temp:real;
begin
Task('Matrix99');
// Ввод данных 
writeln('Введите число M (M<=10)');
readln(M);
writeln('Введите по ',M,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to M do read(a[i,j]);
 end;
// Решение 
for i:=1 to (M div 2) do begin
N:=M-i+1;
l:=0;
for j:=i to N-1 do begin
temp:=a[j,i];
a[j,i]:=a[i,n-l];
a[i,n-l]:=a[N-l,N];
a[N-l,N]:=a[N,j];
a[N,j]:=temp;
inc(l);
 end;
 end;
// ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
writeln;
 for j:=1 to M do write(a[i,j],' ');
 end;
end.
