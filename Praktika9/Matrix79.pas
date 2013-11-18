     // Дана матрица размера M x N. 
// Упорядочить ее столбцы так, 
// чтобы их максимальные элементы 
// образовывали возрастающую последовательность. 
program Matrix79;
uses PT4;
var
max1,max,cncl_ms,k,j,i,M,N:integer;
a: array [1..10,1..10] of real;
temp:real;
begin
Task('Matrix79');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
cncl_ms:=N;
k:=1;
while k > 0 do begin
k:=0;
for i:=2 to cncl_ms do
 begin
 max:=1;
 max1:=1;
         for j:=1 to M do
                     begin
                      if a[max,i] <a[j,i] then max:=j;
                      if a[max1,i-1]<a[j,i-1] then max1:=j;
                     end;
  if a[max,i]<a[max1,i-1] then
                 begin
                 inc(k);
                 for j:=1 to M do
                     begin
                      temp:=a[j,i];
                      a[j,i]:=a[j,i-1];
                      a[j,i-1]:=temp;
                     end;
                 end;
 end;
end;
// ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
 
