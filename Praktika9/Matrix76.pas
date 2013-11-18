     // Дана матрица размера M x N. 
// Упорядочить ее строки так, 
// чтобы их первые элементы 
// образовывали возрастающую последовательность. 
program Matrix76;
uses PT4;
var
cncl_ms,k,j,i,M,N:integer;
a: array [1..10,1..10] of real;
temp:real;
begin
Task('Matrix76');
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
  if a[i,1]>a[i-1,1] then
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
 
