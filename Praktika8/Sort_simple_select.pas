{Сортировка простым выбором}
procedure Sort(var A : TArray; n : integer);
var i,j,k : integer;
    X : Item;
begin
  for i := 1 to n-1 do begin
    k := i;
    for j := i+1 to n do
      if A[j].key > A[k].key then
        k := j;

    x := A[k];
    A[k] := A[i];
    A[i] := x;
   end;
end;

