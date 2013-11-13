{Цифровая сортировка}
function digit(n,i : integer) : integer;
begin
  for i := i downto 2 do
    n := n div 10;

  digit := n mod 10;
end;

{m - число разрядов,
n - число элементов массива}
procedure Sort(m,n : integer; var A : TArray);
var
  B : TArray;
  C : array [0..k-1] of integer;
  i,j,d : integer;
begin
  for i := 1 to m do begin
    for j := 0 to k-1 do 
      C[j] := 0;
    
    for j := 1 to n do begin 
      d := digit(A[j], i);
      inc(C[d]);
    end;

    for j := 1 to k – 1 do
      C[j] := C[j] + C[j - 1];

    for j := n downto 1 do begin
      d := digit(a[j],i);
      B[C[d]] := A[j]; 
      C[d] := C[d] - 1;      
    end;
  end;
end;
