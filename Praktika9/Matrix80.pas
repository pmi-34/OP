     // Дана квадратная матрица A порядка M. 
// Найти сумму элементов ее главной диагонали, т. е. 
// диагонали, содержащей следующие элементы: 
// A1,1,    A2,2,    A3,3,    …,    AM,M. 
program Matrix80;
uses PT4;
var
j,i,M:integer;
a: array [1..10,1..10] of real;
Sum:real;
begin
Task('Matrix80');
// Ввод данных 
writeln('Введите число M (M<=10)');
readln(M);
writeln('Введите по ',M,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to M do read(a[i,j]);
 end;
// Решение 
Sum:=0;
for i:=1 to M do begin
Sum:=Sum+a[i,i];
 end;
// ответ 
writeln;
writeln('Ответ');
writeln('Cумма элементов главной диагонали ',Sum);
end.
