     // Дана целочисленная матрица размера M x N. 
// Найти элемент, 
// являющийся максимальным в своей строке 
// и минимальным в своем столбце. 
// Если такой элемент отсутствует, то вывести 0. 
program Matrix46;
uses PT4;
var
k,x,y,min,max,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
begin
Task('Matrix46');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов (значения от 0 до 100) ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
x:=0;
y:=0;
for i:=1 to M do
 begin
min:=1;
 for j:=2 to N do
   begin
   if a[i,j]>a[i,min] then min:=j;
  end;
max:=1;
 for k:=2 to M do
   begin
   if a[k,min]<a[max,min] then max:=k;
  end;
if max = i then x:=max; y:=min;
end;
// ответ 
writeln;
writeln('Ответ');
writeln('элемент a[',x,',',y,']=',a[x,y]);
end.
