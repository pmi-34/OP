program p36;

uses Num;

var
  N : integer;

begin
  write('Введите число: ');
  readln(N);

  while (not is_pal(n)) do begin
    writeln(n, ' + ', reverse(n), ' = ', n + reverse(n));
    n := n + reverse(n);
  end;

  writeln('Результат: ', n);
end.
