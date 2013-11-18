     // Дана матрица размера M x N. 
// Для каждой строки матрицы 
// с нечетным номером (1, 3, …) 
// найти среднее арифметическое ее элементов. 
// Условный оператор не использовать. 
program Matrix21;
uses PT4;
var
j,i,M,N:integer;
a: array [1..10,1..10] of integer;
Sum:real;
begin
Task('Matrix21');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
writeln;
writeln('Ответ');
 for i:=1 to (M div 2)+(M mod 2) do
 begin
Sum:=0;
 for j:=1 to N do
 begin
Sum:=Sum+a[I*2-1,J];
end;
writeln('среднее арифметическое ',i*2-1,' строки : ',Sum/N);
 end;
end.
