     // Дана матрица размера M x N. 
// Упорядочить ее строки так, 
// чтобы их минимальные элементы 
// образовывали убывающую последовательность. 
program Matrix78;
uses PT4;
var
min1,min,cncl_ms,k,j,i,M,N:integer;
a: array [1..10,1..10] of real;
temp:real;
begin
Task('Matrix78');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
cncl_ms:=M;
k:=1;
while k > 0 do begin
k:=0;
for i:=2 to cncl_ms do
 begin
 min:=1;
 min1:=1;
         for j:=1 to N do
                     begin
                      if a[i,min] >a[i,j] then min:=j;
                      if a[i-1,min1]>a[i-1,j] then min1:=j;
                     end;
  if a[i,min]>a[i-1,min1] then
                 begin
                 inc(k);
                 for j:=1 to N do
                     begin
                      temp:=a[i,j];
                      a[i,j]:=a[i-1,j];
                      a[i-1,j]:=temp;
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
 
