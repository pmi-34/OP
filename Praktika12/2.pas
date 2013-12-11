program p2;
{Из задания абсолютно непонятно, при чем тут записи и 
чего вообще от нас ожидается на выходе программы}
uses UDate;

type 
  date = record
    year: word;
    month: 1..12;
    day: 1..31;
    weekday: 1..7;
  end;

{Самый ебанутый способ}
procedure BuildDate(var p: date; i,N: integer);
begin
  p.year := 0;
  p.weekday := ((i-1) mod 7) + N;

  p.month := 1;
  while (i > GetDaysInMonth(p.month)) do begin
    i -= GetDaysInMonth(p.month);
    p.month += 1;
  end;
  p.day := i
end;

var
  p : date;
  i,N : integer;
begin
  write('Введите номер дня недели 1 января [1-7]: ');
  readln(N);

  write('Пятницы будут счастливыми в месяцах номер ');

  for i := 1 to 365 do begin
    BuildDate(p, i, N);
    if (p.weekday = 5) AND (p.day = 13) then
      write(p.month, ' ');
  end;

  writeln;
end.
