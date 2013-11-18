     // Дана матрица размера M x N. 
// Вывести ее элементы, расположенные в 
// строках с четными номерами (2, 4, …). 
// Вывод элементов производить по 
// строкам, условный оператор не использовать. 
program Matrix9;
uses PT4;
var
K,j,i,M,N:integer;
A: array [1..10,1..10] of integer;
begin
Task('Matrix9');
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
 for i:=1 to M div 2 do
   begin
   writeln;
   write(i*2,' строка : ');
   for j:=1 to N do write(a[i,j],' ');
 end;
end.
 
