     // Дана матрица размера M x N. 
// Поменять местами столбец 
// с номером 1 и последний из столбцов, 
// содержащих только положительные элементы. 
// Если требуемых столбцов нет, 
// то вывести матрицу без изменений. 
program Matrix53;
uses PT4;
var
j,i,M,N,num:integer;
a: array [1..10,1..10] of real;
temp:real;
bol:boolean;
begin
Task('Matrix53');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов (значения от 0 до 100) ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
Num:=0;
 for i:=2 to N do
 begin
 bol:=true;
 for j:=1 to M do
   begin
   if a[j,i]<0 then bol:=false;
   end;
   if bol then Num:=i;
end;
if num >0 then begin
 for j:=1 to M do
   begin
   temp:=a[j,Num];
   a[j,Num]:=a[j,1];
   a[j,1]:=temp;
 end;
 end;
// ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
