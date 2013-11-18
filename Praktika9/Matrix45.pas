     // Дана матрица размера M x N. 
// Найти максимальный среди элементов тех столбцов, 
// которые упорядочены 
// либо по возрастанию, 
// либо по убыванию. 
// Если упорядоченные столбцы 
// в матрице отсутствуют, то вывести 0. 
program Matrix45;
uses PT4;
var
otvet,min,k,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
Y,bY,bV:boolean;
begin
Task('Matrix45');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов (значения от 0 до 100) ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
otvet:=0;
Y:=true;
for i:=1 to N  do
 begin
bY:=true;
bV:=true;
 for j:=2 to M do
   begin
   if a[j,i]<=a[j-1,i] then bY:=false;
   if a[j,i]>=a[j-1,i] then bV:=false;
   end;
if BY or BV then
  begin
  min:=a[1,i];
  for k:=2 to M do
   begin
   if min>a[k,i] then min:=a[k,i];
   end;
  if Y  then begin otvet:=min; Y:=false; end;
  if otvet >= min then otvet:=min;
  end;
end;
// ответ 
writeln;
writeln('Ответ');
writeln('минимальный элемент ',otvet );
end.
