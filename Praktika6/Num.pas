unit Num;

interface

type fract = record
    a : int64; {Числитель дроби}
    b : int64; {Знаменатель дроби}
  end;
  Pfract = ^fract;

{Функции арифметики с дробями}
function f_add(x, y : Pfract) : Pfract;
function f_sub(x, y : Pfract) : Pfract;
function f_mul(x, y : Pfract) : Pfract;
procedure f_div(x, y, res : Pfract);

{Упрощает дробь}
procedure f_simp(x : Pfract);

{Определяет, является ли число простым}
function is_prime (n : int64) : boolean;

{Определяет, является ли число простым числом Мерсена с помощью
 теста Люка-Лемера}
function test_mersen_prime(n : int64; p : int64) : boolean;

{Определяет, является ли число палиндромом}
function is_pal (n : int64) : boolean;

{То же, но в двоичной системе}
function is_bin_pal (n : int64) : boolean;

{Разворачивает число задом наперед}
function reverse (n : int64) : int64;

{То же, но в двоичной системе}
function reverse_bits (n : qword) : qword;

{Считает сумму делителей}
function div_sum (n : int64) : int64;

implementation

function f_add(x, y : Pfract) : Pfract;
var
  res : Pfract;
begin
  New(res);

  res^.a := x^.a*y^.b + y^.a*x^.b;
  res^.b := x^.b * y^.b;

  f_simp(res);
  f_add := res;  
end;

function f_sub(x, y : Pfract) : Pfract;
var
  res : Pfract;
begin
  New(res);

  res^.a := x^.a*y^.b - y^.a*x^.b;
  res^.b := x^.b * y^.b;

  f_simp(res);
  f_sub := res;  
end;

function f_mul(x, y : Pfract) : Pfract;
var
  res : Pfract;
begin
  New(res);

  res^.a := x^.a * y^.a;
  res^.b := x^.b * y^.b;

  f_simp(res);
  f_mul := res;  
end;

procedure f_div(x, y, res : Pfract);
begin
  res^.a := x^.a * y^.b;
  res^.b := x^.b * y^.a;

  f_simp(res);
end;

{Алгоритм Евклида}
function NOD(x,y : int64) : int64;
begin
  while (x <> 0) AND (y <> 0) do
    if (x < y) then
      y := y - x
    else
      x := x - y;
  NOD := x+y;
end;

procedure f_simp(x : Pfract);
var
  c : int64;
begin
  c := NOD(x^.a, x^.b);
  x^.a := x^.a div c;
  x^.b := x^.b div c;
end;

{Простой алгоритм проверки простоты без корней}
function is_prime (n : int64) : boolean;
var
  i : integer;
begin
  i := 2;
  while (i < n div i) AND (n mod i <> 0) do
    inc(i);

  is_prime := n mod i <> 0;
end;

{Тест Люка-Лемера простоты чисел Мерсена}
function test_mersen_prime(n : int64; p : int64) : boolean;
var
  s,i : int64;
begin
  s := 4;
  if (p > 2) then begin
    for i := 1 to p - 2 do
      s := ((s*s) - 2) mod n;

    test_mersen_prime := s = 0;
  end else test_mersen_prime := true;
end;

function reverse (n : int64) : int64;
var
  n2 : int64;
begin
  n2 := 0;

  while n > 0 do begin
    n2 := n2*10 + n mod 10;
    n := n div 10;
  end;

  reverse := n2;
end;

function is_pal (n : int64) : boolean;
begin
  is_pal := n = reverse(n);
end;

{
Have fun! =)
По мотивам BitHacks:
http://graphics.stanford.edu/~seander/bithacks.html
}
function reverse_bits (n : qword) : qword;
const magic : array [0..5] of qword = (
  $5555555555555555,
  $3333333333333333,
  $0F0F0F0F0F0F0F0F,
  $00FF00FF00FF00FF,
  $0000FFFF0000FFFF, 
  $00000000FFFFFFFF
 );
var
  i : integer;
begin
  for i := 0 to 5 do 
    n := ((n shr (1 shl i)) AND magic[i]) OR
          ((n AND magic[i]) shl (1 shl i));

  while (n AND 1 = 0) do
    n := n shr 1; 
  
  reverse_bits := n;
end;

function is_bin_pal (n : int64) : boolean;
begin
  is_bin_pal := n = reverse_bits(n);
end;

function div_sum (n : int64) : int64;
var
  i,k : int64;
begin
  k := 2;
  i := 1;
  while (k < n div k) do begin
    if (n mod k = 0) then begin
      i := i + k + (n div k);
    end;
    inc(k);
  end;

  div_sum := i;
end;

end.
