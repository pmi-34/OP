{Процедура производит слияние двух половинок массива A,
A[l..(l+r)/2] и A[(l+r)/2..r]}
procedure Merge(l,r : integer; var A : TArray);
var
  i,j, {Индексы первого и второго подмассивов}
  t, {Индекс в массиве B}
  m {Граница между подмассивами}
  : integer;
  B  {Вспомогательный массив}
  : TArray;
begin
  {Находим середину отрезка}
  m := (l+r) div 2;

  {Устанавливаем начало первого и второго подмассивов}
  i := l;
  j := m+1;

  {Начальный индекс в массиве B}
  t := 1;

  {Пока оба подмассива не закончились}
  while ((i <= m) and (j <= r)) do begin
    {Соритруем по возрастанию}
    if (A[i].key < A[j].key) then begin
      B[t].key := A[i].key;
      inc(i);
    end else begin
      B[t].key := A[j].key;
      inc(j);
    end;
    inc(t);
  end;

  {Как минимум один из подмассивов кончился; нужно 
  дописать остаток второго в B}
  while (i <= m) do begin
    B[t].key := A[i].key;
    inc(i);
    inc(t)
  end;

  while (j <= r) do begin
    B[t].key := A[j].key;
    inc(j);
    inc(t)
  end;

  {Копируем массив B обратно в A}
  for i := 1 to t-1 do
    A[l+i-1].key := B[i].key;
end;

{Процедура выполняет сортировку слиянием подмассива A[l..r]}
procedure Sort(l,r : integer; var A : TArray);
begin
  {Если в подмассиве более одного элемента}
  if (l < r) then begin
    Sort(l, l+((r-l) div 2), A);
    Sort(l+((r-l) div 2)+1, r, A);
    Merge(l, r, A);
  end;
end;
