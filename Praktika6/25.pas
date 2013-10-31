program p25;

uses Num;

var
  a : array [1..4] of Pfract;
  i : integer;

begin
  for i := 1 to 4 do
    New(a[i]);

  for i := 1 to 3 do begin
    write('Введите числитель и знаменатель дроби #',i,': ' );
    readln(a[i]^.a, a[i]^.b);
  end;

  f_div(a[1], a[2], a[4]);

  f_div(a[4], a[3], a[1]);

  writeln('Результат: ', a[1]^.a, '/', a[1]^.b);
  for i := 1 to 4 do
    Dispose(a[i]);
end.
