     // Дана матрица размера M x N. 
// и целое число K (1 <= K <= M). 
// Перед строкой матрицы 
// с номером K вставить строку из нулей. 
program Matrix68;
uses PT4;
var
j,i,t,M,N,K:integer;
a: array [1..11,1..11] of real;
bol:boolean;
begin
Task('Matrix68');
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
 for i:=M+1 downto k do begin
 for j:=1 to N do begin
a[i,j]:=a[i-1,j];
 end; end;
 for j:=1 to N do begin
a[K,j]:=0;
 end;
inc(m);
// ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
