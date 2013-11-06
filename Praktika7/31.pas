program p31;

uses Arrays;

var
  A : TArray;
  K : integer;

procedure Callback(var f : text);
begin
  read(f, K);
end;

var
  i : integer;

begin
  ReadAC('in31.txt', A, @Callback);

  i := 1;
  while (i <= A[0]) do begin
    if (A[i] mod K = 0) then
      DeleteA(A, i)
    else
      inc(i);
  end;

  WriteA('out.txt', A);
end.

