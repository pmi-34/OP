program p35;

const 
  maxn = 17;
  primes : array [1..maxn] of int64 = 
    (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 47, 53, 59, 61);

{Тест Люка-Лемера}
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

procedure mersen_prime (n : int64);
var
  i : int64;
  k : int64;
begin
  i := 1;
  k := 1 shl primes[1] - 1;
  while (k < n) do begin
    if (test_mersen_prime(k, primes[i])) then
      write(k, ' ');
    inc(i);
    k := 1 shl primes[i] - 1;
  end;
end;

var
  N : int64;

begin
  write('Введите число: ');
  readln(N);

  mersen_prime(n);

  writeln;
end.
