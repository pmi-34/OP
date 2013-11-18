     // Дана квадратная матрица порядка M. 
// Обнулить элементы матрицы, 
// лежащие одновременно выше главной диагонали и выше побочной диагонали. 
// Условный оператор не использовать. 
program Matrix92;
uses PT4;
var
j,i,M:integer;
a: array [1..10,1..10] of real;
begin
Task('Matrix92');
// Ввод данных 
writeln('Введите число M (M<=10)');
readln(M);
writeln('Введите по ',M,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to M do read(a[i,j]);
 end;
// Решение 
for i:=1 to ((M-2) div 2)+(M mod 2)  do begin
for j:=1+i to M-i do begin
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
