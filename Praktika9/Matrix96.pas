     // Дана квадратная матрица A порядка M. 
// Зеркально отразить ее элементы относительно главной диагонали 
// (при этом элементы главной диагонали останутся на прежнем месте, 
// элемент A1,2 поменяется местами с A2,1, элемент A1,3 — с A3,1 и т. д.). 
// Вспомогательную матрицу не использовать. 
program Matrix96;
uses PT4;
var
j,i,M:integer;
a: array [1..10,1..10] of real;
temp:real;
begin
Task('Matrix96');
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
for j:=i+1 to M do begin
temp:=a[i,j];
a[i,j]:=a[j,i];
a[j,i]:=temp;
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
