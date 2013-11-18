     // Дана матрица размера M x N. 
// Упорядочить ее столбцы так, 
// чтобы их последние элементы 
// образовывали убывающую последовательность. 
program Matrix77;
uses PT4;
var
cncl_ms,k,j,i,M,N:integer;
a: array [1..10,1..10] of real;
temp:real;
begin
Task('Matrix77');
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
  if a[M,i]<a[M,i-1] then
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
 
