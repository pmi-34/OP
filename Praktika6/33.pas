program p33;

uses Num;

var
  N, i,k : int64;

begin
  write('Введите число: ');
  readln(N);
  
  k := 1;
  i := 1;
  
  while(i < N) do begin
    k := div_sum (i);
    if ((div_sum(k) = i) AND (k < N) AND (i <> k)) then
      writeln(i, ' ~ ', k);
    inc(i);
  end;

  writeln;
end.
