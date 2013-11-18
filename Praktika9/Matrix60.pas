     // Дана матрица размера M x N. 
// Зеркально отразить ее элементы 
// относительно вертикальной оси 
// симметрии матрицы 
// (при этом поменяются местами столбцы с номерами 
// 1 и N, 2 и N - 1 и т. д.). 
program Matrix60;
uses PT4;
var
j,i,M,N,num:integer;
a: array [1..10,1..10] of real;
temp:real;
bol:boolean;
begin
Task('Matrix60');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10) ');
 read(M); readln(N);
writeln('Введите по ',N,' элементов (значения от 0 до 100) ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
 for i:=1 to N div 2 do
 begin
 for j:=1 to M do
   begin
   temp:=a[j,i];
   a[j,i]:=a[j,n-i+1];
   a[j,n-i+1]:=temp;
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
