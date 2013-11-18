     // Дана целочисленная матрица размера M x N, 
// элементы которой могут принимать значения от 0 до 100. 
// Различные столбцы матрицы назовем похожими, 
// если совпадают множества чисел, встречающихся в этих столбцах. 
// Найти количество столбцов, 
// похожих на последний столбец данной матрицы. 
program Matrix37;
uses PT4;
var
otvet,k,temp,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
bool:boolean;
begin
Task('Matrix37');
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
for i:=N-1 downto 1  do
 begin
temp:=0;
 for k:=1 to m do
    begin
      bool:=false;
      for j:=1 to m do
               begin
                if a[j,i] = a[k,N] then bool:=true;
               end;
      if bool then inc(temp);
    end;
if temp = m then inc(otvet);
 end;
// ответ 
writeln;
writeln('Ответ');
writeln('Количество столбцов ',otvet );
end.
