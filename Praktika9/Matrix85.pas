     // Дана квадратная матрица A порядка M. 
//  Найти среднее арифметическое элементов каждой ее диагонали, 
// параллельной побочной (начиная с одноэлементной диагонали A1,1). 
program Matrix85;
uses PT4;
var
j,i,l,M:integer;
a: array [1..10,1..10] of real;
Sum:real;
begin
Task('Matrix85');
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
Sum:=0;
l:=i;
for j:=1 to i do begin
Sum:=Sum+a[j,l];
dec(l);
 end;
writeln('Сумма элементов ',Sum/i);
 end;
for i:=2 to M do begin
Sum:=0;
l:=0;
for j:=i to M do begin
Sum:=Sum+a[j,M-l];
inc(l);
 end;
writeln('Сумма элементов ',Sum/l);
 end;
end.
