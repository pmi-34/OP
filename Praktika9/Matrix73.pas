     // Дана матрица размера M x N. 
// После последнего столбца, 
// содержащего только отрицательные элементы, 
// вставить столбец из нулей. 
// Если требуемых столбцов нет, 
// то вывести матрицу без изменений. 
program Matrix73;
uses PT4;
var
j,i,M,N,K:integer;
a: array [1..11,1..11] of real;
bol:boolean;
begin
Task('Matrix73');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
K:=0;
// Решение 
bol:=true;
 for i:=1 to N do begin
 bol:=true;
 for j:=1 to M do begin
if a[j,i]>0 then bol:=false;
 end;
if bol then k:=i;
 end;
if k>0 then begin
 for i:=N+1 downto K+1 do begin
 for j:=1 to M do begin
 a[j,i]:=a[j,i-1];
 end; end;
for j:=1 to M do begin
 a[j,K+1]:=0;
 end;
inc(N);
end;
// ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
