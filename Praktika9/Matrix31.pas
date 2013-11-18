     // Дана матрица размера M x N. 
// Найти номера строки и столбца 
// для элемента матрицы, 
// наиболее близкого к 
// среднему значению всех ее элементов. 
program Matrix31;
uses PT4;
var
STR,STL,j,i,M,N:integer;
a: array [1..10,1..10] of real;
CRed:real;
begin
Task('Matrix31');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
CRed:=0;
for i:=1 to N  do
 begin
 for j:=1 to M do CRed:=CRed+a[j,i];
 end;
CRed:=CRed/(M*N);
STR:=1;
STL:=1;
for i:=1 to M  do
 begin
 for j:=1 to N do
 begin
      if abs(CRed-a[STR,STL])>abs(CRed-a[i,j]) then
      begin  STR:=i;  STL:=j; end;
 end;
 end;
writeln;
writeln('Ответ');
writeln('Номер строки ',STR );
writeln('Номер столбца ',STL );
end.
