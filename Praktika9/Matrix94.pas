     // Дана квадратная матрица порядка M. 
// Обнулить элементы матрицы, 
// лежащие одновременно ниже главной диагонали 
// (включая эту диагональ) 
// и выше побочной диагонали 
// (также включая эту диагональ). 
// Условный оператор не использовать. 
program Matrix94;
uses PT4;
var
j,i,l,M:integer;
a: array [1..10,1..10] of real;
begin
Task('Matrix94');
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
for i:=1 to ((M) div 2)+(M mod 2)  do begin
inc(l);
for j:=l to M-l+1 do begin
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
