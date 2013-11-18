     // Дана целочисленная матрица размера M x N. 
// Найти количество ее столбцов, 
// все элементы которых различны. 
program Matrix39;
uses PT4;
var
otvet,k,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
bool:boolean;
begin
Task('Matrix39');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов (значения от 0 до 100) ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
otvet:=0;
for i:=1 to N  do
 begin
bool:=true;
 for j:=1 to M-1 do
   begin
 for k:=j+1 to M do
   begin
   if a[j,i]=a[k,i] then bool:=false;
   end;
   end;
if bool then inc(otvet);
 end;
// ответ 
writeln;
writeln('Ответ');
writeln('Количество столбцов ',otvet );
end.
