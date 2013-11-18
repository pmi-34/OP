     // Дана матрица размера M x N. 
// и целые числа K1 и K2 (1 <= K1 < K2 <= N). 
// Поменять местами столбцы матрицы с номерами K1 и K2. 
program Matrix48;
uses PT4;
var
K1,K2,j,i,M,N:integer;
a: array [1..10,1..10] of real;
temp:real;
begin
Task('Matrix48');
// Ввод данных 
writeln('Введите числа M (M<=10) и N (N<=10)');
 read(M); readln(N);
 writeln('Введите числа K1 и K2 (1 <= K1 < K2 <= M)');
 read(K1); readln(k2);
writeln('Введите по ',N,' элементов (значения от 0 до 100) ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to N do read(a[i,j]);
 end;
// Решение 
 for j:=1 to M do
   begin
   temp:=a[j,k1];
   a[j,k1]:=a[j,k2];
   a[j,k2]:=temp;
   end;
// ответ 
writeln;
writeln('Ответ');
 for i:=1 to M do begin
writeln;
 for j:=1 to N do write(a[i,j],' ');
 end;
end.
