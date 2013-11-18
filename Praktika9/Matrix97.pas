     // Дана квадратная матрица A порядка M. 
// Зеркально отразить ее элементы относительно побочной диагонали 
// (при этом элементы побочной диагонали останутся на прежнем месте, 
// элемент A1,1 поменяется местами с AM,M, элемент A1,2 — с AM?1,M и т. д.). 
// Вспомогательную матрицу не использовать. 
program Matrix97;
uses PT4;
var
j,i,M:integer;
a: array [1..10,1..10] of real;
temp:real;
begin
Task('Matrix97');
// Ввод данных 
writeln('Введите число M (M<=10)');
readln(M);
writeln('Введите по ',M,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to M do read(a[i,j]);
 end;
// Решение 
for i:=1 to M-1 do begin
for j:=1 to M-i do begin
temp:=a[i,j];
a[i,j]:=a[m-j+1,m-i+1];
a[M-j+1,m-i+1]:=temp;
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
