     // Дана квадратная матрица A порядка M. 
// Найти среднее арифметическое элементов каждой ее диагонали, 
// параллельной главной (начиная с одноэлементной диагонали A1,M). 
program Matrix84;
uses PT4;
var
j,i,l,M:integer;
a: array [1..10,1..10] of real;
Sum:real;
begin
Task('Matrix84');
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
Sum:=0;
l:=1;
for j:=i to M do begin
Sum:=Sum+a[l,j];
inc(l);
 end;
writeln('среднее арифметическое ',Sum/(l-1));
 end;
for i:=2 to M do begin
Sum:=0;
l:=1;
for j:=i to M do begin
Sum:=Sum+a[J,l];
inc(l);
 end;
writeln('среднее арифметическое ',Sum/(l-1));
 end;
end.
