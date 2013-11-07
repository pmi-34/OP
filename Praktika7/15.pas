uses PT4;

type 
  TArray = array [1..100] of integer;

var
  a : tarray;
  n, i, max, sp, sm : integer;
begin
  Task('SArray15');
  
  readln(n);
  for i:=1 to n do
    read(a[i]);
    
  max := a[1];
  
  for i := 1 to n do begin
    if (a[i] > max) then
      max := a[i];
  end;
  
  sp := 0;
  sm := 0;
  
  i := 1;
  
  while (a[i] <> max) do begin
    if (a[i] < 0) then
      sm := sm + a[i];
    inc(i);
  end;
  
  inc(i);
  
  while (i <= n) do begin
    if (a[i] > 0) then
      sp := sp + a[i];
    inc(i);
  end;
    
  writeln(sp, sm);
end.