     // Дана матрица размера M x N. 
// Вывести ее элементы в следующем порядке: 
// первый столбец сверху вниз, 
// второй столбец снизу вверх, 
// третий столбец сверху вниз, 
// четвертый столбец снизу вверх и т. д. 
program Matrix12;
uses PT4;
var
K,j,i,M,N:integer;
A: array [1..10,1..10] of integer;
begin
Task('Matrix12');
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
    writeln;
    write(i,' строка : ');
    for j:=1 to N do
     begin
     if (j mod 2)=1 then write(a[i,j],' ')
     else write(a[M-i+1,j],' ');
     end;
 end;
end.
