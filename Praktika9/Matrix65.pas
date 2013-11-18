     // Дана матрица размера M x N. 
// Удалить ее первый столбец, 
// содержащий только положительные элементы. 
// Если требуемых столбцов нет, 
// то вывести матрицу без изменений. 
program Matrix65;
uses PT4;
var
K,j,i,M,N,num:integer;
a: array [1..10,1..10] of real;
bol:boolean;
temp:real;
begin
Task('Matrix65');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
 k:=0;
// Решение 
 for i:=1 to N  do
 begin
  bol:=true;
 for j:=1 to M do
   begin
   if a[j,i]<0 then bol:=false;
   end;
if bol and (k=0) then k:=i;
end;

if k>0 then begin
 for i:=K+1 to N  do
 begin
 for j:=1 to M do
   begin
   temp:=a[j,i-1];
   a[j,i-1]:=a[j,i];
   a[j,i]:=temp;
   end;
end;
dec(N);
end;
// ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
