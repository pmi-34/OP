     // Дана матрица размера M x N. 
// и целое число K (1 <= K <= N). 
// После столбца матрицы с 
// номером K вставить столбец из единиц. 
program Matrix69;
uses PT4;
var
j,i,t,M,N,K:integer;
a: array [1..11,1..11] of real;
begin
Task('Matrix69');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
 writeln('Введите число K (1 <= K <= M)');
 readln(K);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
 for i:=N+1 downto k+1 do begin
 for j:=1 to M do begin
a[j,i]:=a[j,i-1];
 end; end;
 for j:=1 to M do begin
a[j,k+1]:=0;
 end;
inc(n);
// ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
