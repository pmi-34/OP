uses PT4;

type
  TArray = array [1..100] of integer;

var
  N, i, p,z : integer;
  A : tarray;
  
  fn_in, fn_out : string;
  f_in, f_out : text;
  f : file;

procedure InsertA(var A : TArray; i, X : integer);
var
  j : integer;
begin
  for j := N downto i do
    A[j+1] := A[j];
  inc(N);
  A[i] := X;
end;
  
begin
  Task('SArray35');
  
  read(fn_in);
  read(fn_out);
  
  {Damn it!}
  assign(f, fn_in);
  reset(f);
  Seek(f, FileSize(f)-1);
  Truncate(f);
  close(f);
  {/Damn it!}
  
  assign(f_in, fn_in);
  assign(f_out, fn_out);
  
  reset(f_in);
  rewrite(f_out);
  
  readln(f_in, p);
  readln(f_in, z);
  
  N := 0;
  
  while not eof(f_in) do begin
    inc(n);
    read(f_in, a[n]);
  end;
  
  i := 1;
  
  while (i <= n) do begin
    if (a[i] mod p = 0) then begin
      InsertA(a, i, z);
      inc(i);
    end;
    inc(i);
  end;
  
  for i := 1 to n do
    write(f_out, a[i], ' ');
  
  close(f_in);
  close(f_out);
end.