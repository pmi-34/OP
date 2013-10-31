program p1;
var
  a, b, x : real;
  N,i : integer;

function f(x : real) : real;
begin
  f := x - sin(x);
end;

begin
  write('Введите A, B и N: ');
  readln(a, b, n);

  for i := 1 to N do begin
    x := a + (b-a)*i/N;
    writeln(x:10:4, f(x):15:8);
  end;

  writeln;
end.
