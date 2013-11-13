const
  t = 4;
  h : array [1..t] of integer = (11, 7, 4, 1);

procedure Sort(n : integer; var A : TArray);
var
   i,j,k,m : integer;
   h : array [1..t] of byte;
   x : people;
begin
{ Сортировка методом Шелла }

  for m := 1 to t do begin
    k := h[m];

    i := 1;

    { Вспомогательная сортировка пузырьком }
    while (i <= n - k) do begin { Пробегаем массив }
      j := i + k;

      while (j <= n) do begin
        if (A[i] < A[j]) then begin
          { Меняем элементы местами }
          x := A[i];
          A[i] := A[j];
          A[j] := x;
        end;
        j := j + k;
      end;

      i := i + 1;
    end;

  end;
end;
