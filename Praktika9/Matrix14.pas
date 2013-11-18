     // Дана квадратная матрица A порядка M. 
// Начиная с элемента A1,1, 
// вывести ее элементы следующим образом («уголками»): 
// все элементы первого столбца; 
// элементы последней строки, 
// кроме первого (уже выведенного) элемента; 
// оставшиеся элементы второго столбца; 
// оставшиеся элементы предпоследней строки и т. д.; 
// последним выводится элемент A1,M. 
program Matrix14;
uses PT4;
var
j,i,M:integer;
A: array [1..10,1..10] of integer;
begin
Task('Matrix14');
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
    write('столбец ');
     for j:=1 to M-i+1 do  begin write(a[j,i],' ') end;
    writeln;
    write('строка ');
     for j:=i+1 to M do    begin write(a[M-i+1,j],' ') end;
 end;
end.
