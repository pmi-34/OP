     // Дана целочисленная матрица размера M x N, 
// элементы которой могут принимать значения от 0 до 100. 
// Различные строки матрицы назовем похожими, 
// если совпадают множества чисел, 
// встречающихся в этих строках. 
// Найти количество строк, 
// похожих на первую строку данной матрицы. 
program Matrix36;
uses PT4;
var
otvet,k,temp,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
bool:boolean;
begin
Task('Matrix36');
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
for i:=2 to M  do
 begin
temp:=0;
 for k:=1 to N do
    begin
      bool:=false;
      for j:=1 to N do
               begin
                if a[i,j] = a[1,k] then bool:=true;
               end;
      if bool then inc(temp);
    end;
if temp = n then inc(otvet);
 end;
// ответ 
writeln;
writeln('Ответ');
writeln('Количество строк ',otvet );
end.
