{Сортировка Хоара (быстрая)}
procedure Sort(var A : TArray; l, r : integer);
var 
  i,j : integer;
  x,tmp : Item;
begin
  if l < r then begin
    x := A[l];
    i := l-1;
    j := r+1;

    while  i < j do begin
      repeat
        inc(i);
      until A[i].key >= x.key;

      repeat
        dec(j)
      until A[j].key <= x.key;

      if i < j then begin
        tmp := A[i]; 
        A[i] := A[j]; 
        A[j] := tmp;
      end;
    end;
    Sort(A, l, j);
    Sort(A, j+1, r);
  end;
end;
