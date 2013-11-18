     // Дана квадратная матрица A порядка M. 
// Найти минимальный элемент для каждой ее диагонали, 
// параллельной главной (начиная с одноэлементной диагонали A1,M). 
program Matrix86;
uses PT4;
var
j,i,l,M:integer;
a: array [1..10,1..10] of real;
min:real;
begin
Task('Matrix86');
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
for i:=M downto 1 do begin
min:=a[1,i];
l:=1;
for j:=i to M do begin
if min>a[l,j] then min:=a[l,j];
inc(l);
 end;
writeln('Сумма элементов ',min);
 end;

for i:=2 to M do begin
min:=a[i,1];
l:=1;
for j:=i to M do begin
if min>a[J,l] then min:=a[J,l];
inc(l);
 end;
writeln('Сумма элементов ',min);
 end;

end.
