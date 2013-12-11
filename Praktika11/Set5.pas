Program p5;

type
  Digits = 0..9;
  SetDigits = set of Digits;

function IsNSym(s : string) : boolean;
var
  i : integer;
  l,r : SetDigits;
  n : integer;
begin
  l := [];
  r := [];
  n := length(s);
  
  for i := 1 to n div 2 do
    l := l + [ord(s[i]) - ord('0')];
    
  for i := n div 2 + 1 + ord(n mod 2 = 1) to n do
    r := r + [ord(s[i]) - ord('0')];
    
  IsNSym := l = r;
  
end;

var
  s : string;
begin
  write('Введите число: ');
  readln(s);
  
  write('Число ', s, ' ');
  if (not IsNSym(s)) then
    write('не ');
  writeln('является приблизительно симметричным')

end.