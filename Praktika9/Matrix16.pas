     // Дана квадратная матрица A порядка 
// M (M — нечетное число). 
// Начиная с элемента A1,1 и 
// перемещаясь против часовой стрелки, 
// вывести все ее элементы по спирали: 
// первый столбец, последняя строка, 
// последний столбец в обратном порядке, 
// первая строка в обратном порядке, 
// оставшиеся элементы второго столбца и т. д.; 
// последним выводится центральный элемент матрицы. 
program Matrix16;
uses PT4;
var
N,j,i,M:integer;
A: array [1..10,1..10] of integer;
begin
Task('Matrix16');
// Ввод данных 
writeln('Введите числа M (M — нечетное число)');
 read(M);
writeln('Введите по ',M,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to M do read(a[i,j]);
 end;
// Ответ 
writeln;
writeln('Ответ');
N:=M;
for i:=1 to M div 2  do
 begin
     writeln;
     for j:=i to N do  begin write(a[J,i],' ') end;
     writeln;
     for j:=i+1 to N do    begin write(a[N,J],' ') end;
     writeln;
     for j:=N-1 downto i do    begin write(a[j,N],' ') end;
     writeln;
     for j:=N-1 downto i+1 do    begin write(a[i,J],' ') end;
     dec(N);
 end;
writeln;
write(a[N,N],' ')
end.
