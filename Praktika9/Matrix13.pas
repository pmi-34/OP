     // Дана квадратная матрица A порядка M. 
// Начиная с элемента A1,1, 
// вывести ее элементы следующим образом («уголками»): 
// все элементы первой строки; 
// элементы последнего столбца, 
// кроме первого (уже выведенного) элемента; 
// оставшиеся элементы второй строки; 
// оставшиеся элементы предпоследнего столбца и т. д.; 
// последним выводится элемент AM,1. 
program Matrix13;
uses PT4;
var
j,i,M:integer;
A: array [1..10,1..10] of integer;
begin
Task('Matrix13');
// Ввод данных 
writeln('Введите числа M (M<=10)');
 read(M);
writeln('Введите по ',M,' элементов ');
 for i:=1 to M do begin
write(i,' строки : ');
 for j:=1 to M do read(a[i,j]);
 end;
// Ответ 
writeln;
writeln('Ответ');
 for i:=1 to M  do
 begin
    writeln;
    write('строка ');
     for j:=1 to M-i+1 do  begin write(a[i,j],' ') end;
    writeln;
    write('столбец ');
     for j:=i+1 to M do    begin write(a[j,M-i+1],' ') end;
 end;
end.
