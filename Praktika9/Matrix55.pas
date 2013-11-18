     // Дана матрица размера M x N. 
// (M — четное число). 
// Поменять местами верхнюю 
// и нижнюю половины матрицы. 
program Matrix55;
uses PT4;
var
j,i,M,N,num:integer;
a: array [1..10,1..10] of real;
temp:real;
bol:boolean;
begin
Task('Matrix55');
// Ввод данных 
writeln('Введите числа M (M — четное число)(M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов (значения от 0 до 100) ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
 for i:=1 to M div 2 do
 begin
 for j:=1 to N do
   begin
   temp:=a[i,j];
   a[i,j]:=a[(M div 2) + i,j];
   a[(M div 2) + i,j]:=temp;
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
