program p17;

function d_mul(n : integer) : integer;
var
  m : integer;
begin
  if (n = 0) then
    m := 0
  else
    m := 1;

  while (n > 0) do begin
    m := m*(n mod 10);
    n := n div 10;
  end;
  d_mul := m;
end;

var
  N,maxs,max,i,x,xs : integer;

begin
  write('Введите N: ');
  readln(N);

  maxs := 0;
  max := 0;

  for i := 1 to n do begin
    write('Введите число #', i, ': ');
    readln(x);

    xs := d_mul(x);
    {write(xs, ' ');}
    if (xs < maxs) then begin
      max := x;
      maxs := xs;
    end;
    dec(n);
  end;
  writeln('Искомое число: ', max);
end.
