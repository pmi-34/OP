uses PT4;

type
  TArray = array [1..100] of real;

var
  N,i : integer;
  fn_in, fn_out : string;
  f_in, f_out : text;
  a : TArray;
  
procedure DeleteA(var A : TArray; i : integer);
var
  j : integer;
begin
  for j := i to N-1 do
    A[j] := A[j+1];
  dec(N);
end;

begin
  Task('SArray30');
  read(fn_in);
  read(fn_out);
  
  assign(f_in, fn_in);
  assign(f_out, fn_out);
  
  reset(f_in);
  rewrite(f_out);
  
  read(f_in, N);
  
  for i := 1 to n do begin
    read(f_in, a[i]);
    write(f_out, a[i]:0:2);
      if (i < n) then write(f_out, ' ');
  end;
    
  writeln(f_out);
  writeln(f_out);
    
  i := n;
  while (i >= 1) do begin
    if (abs(frac(a[i])) > 0.3) then
      DeleteA(a, i);
    dec(i);
  end;
  
  for i := 1 to N do begin
    write(f_out, a[i]:0:2);
    if (i < n) then
      write(f_out, ' ');
  end;

  close(f_in);
  close(f_out);
end.
