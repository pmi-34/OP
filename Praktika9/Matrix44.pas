     // Дана матрица размера M x N. 
// Найти минимальный 
// среди элементов тех строк, 
// которые упорядочены 
// либо по возрастанию, 
// либо по убыванию. 
// Если упорядоченные строки 
// в матрице отсутствуют, то вывести 0. 
program Matrix44;
uses PT4;
var
otvet,min,k,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
Y,bY,bV:boolean;
begin
Task('Matrix44');
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
for i:=1 to M  do
 begin
bY:=true;
bV:=true;
 for j:=2 to N do
   begin
   if a[i,j]<=a[i,j-1] then bY:=false;
   if a[i,j]>=a[i,j-1] then bV:=false;
   end;
if BY or BV then
  begin
  min:=a[i,1];
  for k:=2 to N do
   begin
   if min>a[i,k] then min:=a[i,k];
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
