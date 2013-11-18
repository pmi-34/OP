     // Дана матрица размера M x N. 
// Продублировать столбец матрицы, 
// содержащий ее минимальный элемент. 
program Matrix71;
uses PT4;
var
j,i,JJ,M,N,II:integer;
a: array [1..11,1..10] of real;
begin
Task('Matrix71');
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
if a[i,j]<a[II,JJ]then begin JJ:=j; II:=i; end;
 end; end;
 for i:=N+1 downto JJ+1 do begin
 for j:=1 to M do begin
 a[j,i]:=a[j,i-1];
 end; end;
inc(N);
// ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
