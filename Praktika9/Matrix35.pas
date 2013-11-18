     // Дана целочисленная матрица размера M x N. 
// Найти номер первого из ее столбцов, 
// содержащих только нечетные числа. 
// Если таких столбцов нет, то вывести 0. 
program Matrix35;
uses PT4;
var
otvet,temp,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
begin
Task('Matrix35');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
otvet:=0;
for i:=1 to N  do
 begin
temp:=0;
 for j:=1 to M do
 begin
      if (a[j,i] mod 2)= 1 then inc(temp);
 end;
 if (temp = M)and(Otvet = 0) then otvet:=i;
 end;
writeln;
writeln('Ответ');
writeln('Номер строки ',otvet );
end.
