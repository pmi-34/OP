{Сортировка подсчетом}
procedure Sort(n : integer; var A : TArray);
var
  i,j,k : integer;
  B : TArray;
  C : array [0..k-1] of integer;
begin
  for i := 0 to k – 1 do
    C[i] := 0;

  for i := 1 to n do
    C[A[i].key] := C[A[i].key] + 1;

  for j := 1 to k – 1 do
    C[j] := C[j] + C[j - 1];

  for i := n downto 1 do begin
    B[C[A[i].key]] := A[i]; 
    C[A[i].key] := C[A[i].key] - 1;      
  end;

  for i := 1 to n do
    A[i] := B[i];
end;
