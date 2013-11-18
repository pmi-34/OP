     // Дана квадратная матрица порядка M. 
// Обнулить элементы матрицы, 
// лежащие одновременно выше главной диагонали и ниже побочной диагонали. 
// Условный оператор не использовать. 
program Matrix93;
uses PT4;
var
j,i,l,M:integer;
a: array [1..10,1..10] of real;
begin
Task('Matrix93');
// Ввод данных 
writeln('Введите число M (M<=10)');
readln(M);
writeln('Введите по ',M,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to M do read(a[i,j]);
 end;
// Решение 
l:=0;
for i:=M downto ((M-2) div 2)+(M mod 2)  do begin
inc(l);
for j:=1+l to M-l do begin
a[j,i]:=0;
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
