program p23;

uses
  Classes, SysUtils
  { you can add units after this };

const fname = 'data.db';
const t = 4;

{ Направление поиска }

type 
  direct = (less, equal, great);
  myStr = array [0..100] of char;
  student = record
    surname: myStr;
    name: myStr;

    test1, test2, test3 : byte;
  end;
  sfunc = function(var x, y : student) : direct;

var
  p: array [1..100] of student;
  n: integer;
  ch : boolean;

procedure WriteDB; forward;
procedure init; forward;

procedure changed;
var
   c : char;
begin
  if (ch) then begin
    writeln('Внимание: База была изменена в памяти!');
    writeln(' ':10, 'Выберите подходящее действие:');
    writeln(' ':12, 'Записать изменения на диск (W)');
    writeln(' ':12, 'Повторно прочесть базу с диска (R)');
    writeln(' ':12, 'Не обращать внимания (N)');
    write(' ':10, 'Действие [W/R/N]: ');
    readln(c);
    case upcase(c) of
      'W' : writeDB;
      'R' : init;
    end;
  end;
end;

// ------------------- Основные операции сравнения ------------------- //

{ Сравнение фамилий (строк?) }
function CmpFams(var x, y : student) : direct;
begin
     if(x.surname = y.surname) then CmpFams := equal;
     if(x.surname < y.surname) then CmpFams := less;
     if(x.surname > y.surname) then CmpFams := great;
end;

{ Сравнение двух целых чисел }
function CmpChis(var x, y : integer) : direct;
begin
     if(x = y) then CmpChis := equal;
     if(x < y) then CmpChis := less;
     if(x > y) then CmpChis := great;
end;

// ---------------------- Частные операции сравнения ---------------------- //

function CmpBalls(var x, y : student) : direct;
var
  t1,t2 : integer;
begin
  t1 := x.test1 + x.test2 + x.test3;
  t2 := y.test1 + y.test2 + y.test3;

  CmpBalls := CmpChis(t1, t2);
end;

function CmpFamsAndBalls(var x, y : student) : direct;
var
  t1,t2 : integer;
begin
  t1 := x.test1 + x.test2 + x.test3;
  t2 := y.test1 + y.test2 + y.test3;

  if (t1 <> t2) then CmpFamsAndBalls := equal
  else CmpFamsAndBalls := CmpFams(x, y);
end;

// ---------------------- Основные операции ------------------------------- //
procedure SortShell(sf : sfunc; dir : direct); { SF - функция сравнения элементов, Dir - направление }
var
   i,j,k,m : integer;
   h : array [1..t] of byte;
   x : student;
begin
{  Сортировка методом елла (обобщенный вариант) }

        h[1] := 9;
        h[2] := 5;
        h[3] := 3;
        h[4] := 1;
        //h[5] := 1;

        for m := 1 to t do begin
            k := h[m];

            i := 1;
            while (i <= n - k) do begin { Пробегаем массив }

            { Вспомогательная сортировка }
            j := i + k;

            while (j <= n) do begin
                  if(sf(p[i], p[j]) = dir) then begin
                    { Меняем элементы местами }
                    x := p[i];
                    p[i] := p[j];
                    p[j] := x;
                  end;
                  j := j + k;
            end;
            i := i + 1;
            end;
        end;
end;

procedure SortFamsAndBalls;
begin
     changed;

     SortShell(@CmpBalls, less);

     SortShell(@CmpFamsAndBalls, great);
     ch := true;
end;

procedure SortFams;
begin
  changed;
  SortShell(@CmpFams, great);
  ch := true;
end;

procedure EnterRecord;
var
   i : integer;
   c : char;
begin
   i := n;

   repeat
   inc(i);
   writeln('Новая запись №', i);
   write('Фамилия: ');
   readln(p[i].surname);

   write('Имя: ');
   readln(p[i].name);

   write('Тест #1: ');
   readln(p[i].test1);

   write('Тест #2: ');
   readln(p[i].test2);

   write('Тест #3: ');
   readln(p[i].test3);

   write('Продолжить ввод? [y/n]: ');
   readln(c);
   writeln;
   until upcase(c) = 'N';

   n := i;
   ch := true;
end;

procedure Print;
var
   i : integer;
   f : Text;
   c : char;
   name : string;
begin

   write('Вывод в файл (f) или на экран (s)? ');
   readln(c);
   if(upcase(c) = 'F') then begin
     write('Введите имя файла: ');
     readln(name);
     assign(f, name);
     rewrite(f);
   end else f := stdout;

   writeln(f, 'Фамилия ':12, 'Имя ':12, 'Тест #1 ':12, 'Тест #2 ':12, 'Тест #3 ':12);

   for i := 1 to n do begin
     writeln(f,
       p[i].surname:12,
       p[i].name:12,
       p[i].test1:12,
       p[i].test2:12,
       p[i].test3:12);
   end;

   if (c = 'f') then begin
        close(f);
        writeln('Внимание: вывод в файл производится в кодировке UTF-8!');
   end;

end;

function CalcZachet(x : student) : string;
begin
  if ((x.test1 + x.test2 + x.test3)*100 >= 90*80) then
    CalcZachet := 'Зачет'
  else
    CalcZachet := 'Незачет'
end;

procedure Zachet;
var
   i : integer;
   f : Text;
   c : char;
   name : string;
begin

   write('Вывод в файл (f) или на экран (s)? ');
   readln(c);
   if(upcase(c) = 'F') then begin
     write('Введите имя файла: ');
     readln(name);
     assign(f, name);
     rewrite(f);
   end else f := stdout;

   writeln(f, 'Фамилия ':12, 'Имя ':12, 'Тест #1 ':12, 'Тест #2 ':12, 
              'Тест #3 ':12, 'Зачет':12);

   for i := 1 to n do begin
     writeln(f,
       p[i].surname:12,
       p[i].name:12,
       p[i].test1:12,
       p[i].test2:12,
       p[i].test3:12,
       CalcZachet(p[i])
       );
   end;

   if (c = 'f') then begin
        close(f);
        writeln('Внимание: вывод в файл производится в кодировке UTF-8!');
   end;

end;

procedure Dump;
var
   i : integer;
   f : Text;
   c : char;
   name : string;
begin

   write('Вывод в файл (f) или на экран (s)? ');
   readln(c);
   if(upcase(c) = 'F') then begin
     write('Введите имя файла: ');
     readln(name);
     assign(f, name);
     rewrite(f);
   end else f := stdout;

   writeln(f, 'Фамилия ':12, 'Имя ':12, 'Тест #1 ':12, 'Тест #2 ':12, 
              'Тест #3 ':12, 'Зачет':12);

   for i := 1 to n do begin
     writeln(f,
       p[i].surname:12,
       p[i].name:12,
       p[i].test1:12,
       p[i].test2:12,
       p[i].test3:12,
       CalcZachet(p[i])
       );
   end;

   writeln(f);
   writeln(f, 'Неуспевающие студенты:');
   SortFams;
   for i := 1 to N do
     if ((p[i].test1 +
          p[i].test2 +
          p[i].test3)*100 < 90*40) then
       writeln(f,
         p[i].surname:12,
         p[i].name:12,
         p[i].test1:12,
         p[i].test2:12,
         p[i].test3:12
       ); 

   if (c = 'f') then begin
        close(f);
        writeln('Внимание: вывод в файл производится в кодировке UTF-8!');
   end;

end;

procedure Help;
begin
     writeln('Помощь:');
     writeln(' ':5, 's : Выполнить сортировку БД');
     writeln(' ':5, 'p : Вывести информацию в виде таблицы');
     writeln(' ':5, 'z : Вывести зачетную ведомость');
     writeln(' ':5, 'd : Вывести отчет об успеваемости');
     writeln(' ':5, 'n : Добавление новых записей');
     writeln(' ':5, 'h : Вывести справку по использованию');
     writeln(' ':5, 'i : Повторная инициализация приложения (считывание базы с диска)');
     writeln(' ':5, 'w : Запись измененной базы на диск');
     writeln(' ':5, 'm : Справка по функциям разработчика');
     writeln(' ':5, 'x : Выход');
     writeln;

     writeln('Внимание: Все функции сортировки изменяют копию базы в памяти программы!');
     writeln(' ':10, 'Одновременная сортировка и добавление новых записей недопустимы!');
end;

procedure DHelp;
begin
     writeln('Функции разработчика (использовать с осторожностью!):');
     writeln(' ':5, 'd : Отладка алгоритма сортировки');
end;

procedure init;
var
   f : file of student;
   c : char;
begin
     {$I-} //Отключаем проверку ввода-вывода на случай несуществующего файла
     assign(f, fname);
     reset(f);
     {$I+} //Включаем обратно
     if (IOResult <> 0) then begin
        writeln('Невозможно открыть файл базы данных ', fname);
        writeln('Проверьте, что он существует и лежит в одном каталоге с программой');
        write('Хотите создать новый (Добавить записи можно будет с помощю команды ''n'')? [y/N]: ');
        readln(c);
        if (upcase(c) = 'Y') then begin
           rewrite(f);
           close(f);
           reset(f);
        end else halt;
     end;

     n := 0;
     while (NOT EOF(f)) do begin
           inc(n);
           read(f, p[n]);
     end;
     close(f);
     ch := false;
end;

procedure WriteDB;
var
   i : integer;
   f : file of student;
begin
   assign(f, fname);
   rewrite(f);
   for i := 1 to n do write(f, p[i]);
   close(f);
   ch := false;
end;

procedure fini;
var
   c : char;
begin
     writeln('Внимание: Копия базы в памяти была изменена!');
     //writeln(' ':10, '');
     write(' ':10, 'Сохранить изменения? [y/N]: ');
     readln(c);

     if(upcase(c) = 'Y') then WriteDB;
end;

var
   c : char;
begin
     init;

     repeat
     write('Команда (h для справки): ');
     readln(c);
     case upcase(c) of
          'S' : SortFamsAndBalls;
          'N' : EnterRecord;
          'P' : Print;
          'Z' : Zachet;
          'D' : Dump;
          'H' : Help;
          'M' : DHelp;
          'I' : Init;
          'W' : WriteDB;
     end;
     until c = 'x';
     if (ch) then fini;
end.

