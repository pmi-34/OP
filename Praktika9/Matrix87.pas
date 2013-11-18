     // Дана квадратная матрица A порядка M. 
// Найти максимальный элемент для каждой ее диагонали, 
// параллельной побочной (начиная с одноэлементной диагонали A1,1). 
program Matrix87;
uses PT4;
var
j,i,l,M:integer;
a: array [1..10,1..10] of real;
max:real;
begin
Task('Matrix87');
// Ввод данных 
writeln('Введите число M (M<=10)');
readln(M);
writeln('Введите по ',M,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to M do read(a[i,j]);
 end;
// Решение 
writeln;
writeln('Ответ');
for i:=1 to M do begin
max:=a[1,i];
l:=i;
for j:=1 to i do begin
if max<a[j,l] then max:=a[j,l];
dec(l);
 end;
writeln('Сумма элементов ',max);
 end;
for i:=2 to M do begin
max:=a[i,M];
l:=0;
for j:=i to M do begin
if max<a[j,M-l] then max:=a[j,M-l];
inc(l);
 end;
writeln('Сумма элементов ',max);
 end;
end.
