uses
  PT4;

type
  TArray = array [1..100] of integer;

var
  N,i :integer;
  f : boolean;
  a : tarray;
begin
  Task('SArray4');
  readln(n);
  for i := 1 to N do
    read(a[i]);
    
  f := true;
  
  i := 1;
  while (f AND (i < n)) do begin
    if a[i]*a[i+1] >= 0 then
      f := false;
    inc(i);
  end;
  
  writeln(f);
end.

