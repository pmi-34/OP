     // Дана матрица размера M x N. 
// Вывести ее элементы, 
// расположенные в столбцах 
// с нечетными номерами (1, 3, …). 
// Вывод элементов производить по 
// столбцам, условный оператор не использовать. 
program Matrix10;
uses PT4;
var
K,j,i,M,N:integer;
A: array [1..10,1..10] of integer;
begin
Task('Matrix10');
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
 for i:=1 to (round(N/2))+(N mod 2) do
   begin
   writeln;
   write(i*2-1,' столбец : ');
   for j:=1 to M do write(a[j,i*2-1],' ');
 end;
end.
 
