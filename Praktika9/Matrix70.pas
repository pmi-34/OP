     // Дана матрица размера M x N. 
// Продублировать строку матрицы, 
// содержащую ее максимальный элемент. 
program Matrix70;
uses PT4;
var
j,i,JJ,M,N,II:integer;
a: array [1..11,1..10] of real;
begin
Task('Matrix70');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
 JJ:=1;
 II:=1;
// Решение 
 for i:=1 to M do begin
 for j:=1 to N do begin
if a[i,j]>a[II,JJ]then begin JJ:=j; II:=i; end;
 end; end;
 for i:=M+1 downto II+1 do begin
 for j:=1 to N do begin
 a[i,j]:=a[i-1,j];
 end; end;
inc(M);
// ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
