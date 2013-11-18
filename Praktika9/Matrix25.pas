     // Дана матрица размера M x N. 
// Найти номер ее строки 
// с наибольшей суммой элементов 
// и вывести данный номер, 
// а также значение наибольшей суммы. 
program Matrix25;
uses PT4;
var
MAx,Sum,num,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
begin
Task('Matrix25');
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
for j:=1 to N do begin Max:=Max+a[1,J]; end;
num:=1;
 for i:=2 to M  do
 begin
Sum:=0;
for j:=1 to N do
 begin
Sum:=sum+a[I,J];
end;
if Sum> max then begin max:=sum; num:=i; end;
 end;
// Ответ 
writeln('номер строки с наибольшей суммой элементов ',num);
writeln('суммa элементов ',max);
end.
