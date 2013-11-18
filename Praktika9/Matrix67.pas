     // Дана матрица размера M x N. 
// содержащая как положительные, 
// так и отрицательные элементы. 
// Удалить все ее столбцы, 
// содержащие только положительные элементы. 
// Если требуемых столбцов нет, 
// то вывести матрицу без изменений. 
program Matrix67;
uses PT4;
var
j,i,t,M,N:integer;
a: array [1..10,1..10] of real;
bol:boolean;
begin
Task('Matrix67');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
i:=0;
while  i<N  do
 begin
 inc(i);
  bol:=true;
 for j:=1 to M do
   begin
   if a[j,i]<0 then bol:=false;
   end;

if bol then
  begin
    for t:=i+1 to N  do
     begin
     for j:=1 to M do
        begin
        a[j,t-1]:=a[j,t];
        end;
      end;
 dec(N);
 dec(i);
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
