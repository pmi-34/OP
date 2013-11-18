     // Дана матрица размера M x N. 
// Вывести ее элементы в следующем порядке: 
// первая строка слева направо, 
// вторая строка справа налево, 
// третья строка слева направо, 
// четвертая строка справа налево и т. д. 
program Matrix11;
uses PT4;
var
K,j,i,M,N:integer;
A: array [1..10,1..10] of integer;
begin
Task('Matrix11');
// Ввод данных 
writeln('Введите числа (строки) M (M<=10) и (столбцы) N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Ответ 
writeln;
writeln('Ответ');
 for i:=1 to M  do
 begin
   if (i mod 2)=1 then
    begin
    writeln;
    write(i,' строка : '); for j:=1 to N do write(a[i,j],' ');
    end
   else
    begin
    writeln;
    write(i,' строка : ');   for j:=N downto 1 do write(a[i,j],' ');
    end;
 end;
end.
