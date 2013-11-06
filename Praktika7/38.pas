program p38;

uses Arrays;

var
  A : TArray;
  i : integer;

begin
  ReadA('in38.txt', A);

  i := 1;
  while (i <= A[0]) do begin
    if (A[i] > 0) then begin
      InsertA(A, i, 0);
      inc(i);
    end;
    inc(i);
  end;

  WriteA('out.txt', A);
end.
