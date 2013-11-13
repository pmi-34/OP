procedure Sort(n : integer; var A : TArray);
var
  i,j : integer;
  x : Item;
begin
  for i := 1 to N-1 do
    for j := 1 to N-i do
      if A[j].key > A[j+1].key then begin
        x := A[j];
        A[j] := A[j+1];
        A[j+1] := x;
      end;
end;
