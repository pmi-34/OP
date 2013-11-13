{Сортировка пирамидкой}
procedure Egypt (var A : Tarray; n : integer);
var 
  r,i,j : integer;
  x : Item;
  pp : boolean;
begin
  (*Эта часть массива является пирамидой.*)
  r := n div 2+1;

  while r > 1 do begin
  (*Цикл по элементам массива, для которых необходимо найти место в пирамиде.*)
    dec(r);

    (*Индекс рассматриваемого элемента и сам элемент.*)
    i := r;
    x := A[i];

    (*Индекс элемента, с которым происходит сравнение.*)
    j := 2*i;

    (*Считаем, что для элемента не найдено место в пирамиде.*)
    pp := false;

    while (j <= n) and (not pp) do begin
      if (j < n) then
        (*Сравниваем с бОльшим элементом.*)
        if (A[j].key < A[j+1].key) then 
          inc(j);

        (*Элемент находится на своем месте?*)
        if x.key >= A[j].key then 
          pp := true
        else begin 
         (* Иначе переставляем элемент и идем дальше по пирамиде.*)
          A[i] := A[j];
          i := j;
          j := 2*i; 
        end;
    end;

    A[i] := x;
  end;
end;

procedure Sort(n : integer; var A : TArray);
var 
  i : integer;
  t : Item;
begin
  for t := n downto 2 do begin 
    (*Строим пирамиду из i элементов*)  
    Egypt(A, i); 
    (*Меняем местами 1 -й и i-й элементы*)
    t := A[1]; 
    A[1] := A[i];
    A[i] := t;
  end;
end;
