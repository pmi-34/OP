{Сортировка бинарными вставками}
procedure Sort(n : integer; var a : TArray);
var 
  i,j,l,r,m : integer;
  x : Item;
begin
  for i := 2 to n do
    if A[i-1].key > A[i].key then begin 
      x := A[i];
      l := 1;
      r := i-1;
      repeat
        m := (l+r) div 2; {Новой "серединой" 
                      последовательности всегда будет 
                           левый центральный элемент}
        if A[m].key < x.key 
         then 
           l := m+1
         else 
           r := m-1;
      until l > r; {поиск ведется до тех пор, пока левая граница не окажется правее(!) правой границы}
      for j := i-1 downto l do 
        A[j+1] := A[j];
      A[l] := x;
    end;
end;
