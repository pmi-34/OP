     // Дана квадратная матрица порядка M. 
// Обнулить элементы матрицы, 
// лежащие на побочной диагонали и ниже нее. 
// Условный оператор не использовать. 
program Matrix90;
uses PT4;
var
j,i,M:integer;
a: array [1..10,1..10] of real;
begin
Task('Matrix90');
// Ввод данных 
writeln('Введите число M (M<=10)');
readln(M);
writeln('Введите по ',M,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to M do read(a[i,j]);
 end;
// Решение 
for i:=1 to M do begin
for j:=M-i+1 to M do begin
a[i,j]:=0;
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
