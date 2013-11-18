     // Дана матрица размера M x N. 
// Найти номер ее столбца 
// с наименьшим произведением элементов 
// и вывести данный номер, 
// а также значение наименьшего произведения. 
program Matrix26;
uses PT4;
var
Min,Pro,num,j,i,M,N:integer;
a: array [1..10,1..10] of integer;
begin
Task('Matrix26');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
writeln('Введите по ',N,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
Min:=1;
for j:=1 to m do begin Min:=Min*a[j,1]; end;
num:=1;
 for i:=2 to n  do
 begin
Pro:=1;
for j:=1 to M do
 begin
Pro:=pro*a[J,i];
end;
if Pro<min then begin min:=pro; num:=i; end;
 end;
// Ответ 
writeln;
writeln('Ответ');
writeln('Номер столбца с наименьшим произведением элементов ',num);
writeln('Произведение элементов ',min);
end.
