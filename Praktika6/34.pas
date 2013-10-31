program p34;

uses Num;

var
  N,i : integer;

begin
  write('Введите число: ');
  readln(N);

  for i := 1 to N do begin
    
    if (is_prime(i) AND is_bin_pal(i)) then
      write(i, ' ');
  end;
  writeln;
end.
