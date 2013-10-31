program p32;
uses Num;

var
  N,i : integer;
begin

  write('Введите N: ');
  readln(n);

  for i := 10 to N do begin
    if (is_pal(i) AND is_pal(i*i)) then
      write(i, ' ');
  end;

  writeln;
end.
