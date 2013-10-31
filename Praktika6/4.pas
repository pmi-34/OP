program p1;
var
  a, b, x : real;
  N,i : integer;
  fi : text;

function f(x : real) : real;
begin
  f := sin(x)*sin(x) - cos(2*x);
end;

begin
  write('Введите A, B и N: ');
  readln(a, b, n);

  assign(fi, 'out.txt');
  rewrite(fi);
  for i := 1 to N do begin
    x := a + (b-a)*i/N;
    writeln(fi, x:10:4, f(x):15:8);
  end;

  close(fi);
  writeln;
end.
