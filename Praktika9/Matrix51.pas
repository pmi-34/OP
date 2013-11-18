     // Дана матрица размера M x N. 
// Поменять местами строки, 
// содержащие минимальный и максимальный элементы матрицы. 
program Matrix51;
uses PT4;
var
Mmin,Nmin,Mmax,Nmax,j,i,M,N:integer;
a: array [1..10,1..10] of real;
temp:real;
begin
Task('Matrix51');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов (значения от 0 до 100) ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
 Mmin:=1; Mmax:=1;
 Nmin:=1; Nmax:=1;
 for i:=1 to M do
 begin
 for j:=1 to N do
   begin
   if a[Mmin,Nmin]>a[i,j] then begin Mmin:=i; Nmin:=j; end;
   if a[Mmax,Nmax]<a[i,j] then begin Mmax:=i; Nmax:=j; end;
   end;
end;
 for j:=1 to N do
   begin
   temp:=a[Mmin,j];
   a[Mmin,j]:=a[Mmax,j];
   a[Mmax,j]:=temp;
 end;
// ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
