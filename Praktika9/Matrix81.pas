     // Дана квадратная матрица A порядка M. 
// Найти среднее арифметическое элементов ее побочной диагонали, 
// т. е. диагонали, содержащей следующие элементы: 
// A1,M,    A2,M-1,    A3,M-2,    …,    AM,1. 
program Matrix81;
uses PT4;
var
j,i,M:integer;
a: array [1..10,1..10] of real;
Sum:real;
begin
Task('Matrix81');
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
Sum:=Sum+a[i,m-i+1];
 end;
// ответ 
writeln;
writeln('Ответ');
writeln('Cреднее арифметическое элементов ',Sum/M);
end.
