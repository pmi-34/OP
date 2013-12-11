program p14;

type 
  city = (Moscow, Perm, Anapa, Kyev, Sochi, Minsk, Riga);
  way = set of city;
  travs = array [1..20] of way;
  
function GetCity(S : String) : way;
var
  res : way;
begin
  res := [];
  
  if (S = 'Moscow') then
    res := [Moscow]
  else if (S = 'Perm') then
    res := [Perm]
  else if (S = 'Anapa') then
    res := [Anapa]
  else if (S = 'Kyev') then
    res := [Kyev]
  else if (S = 'Sochi') then
    res := [Sochi]
  else if (S = 'Minsk') then
    res := [Minsk]
  else if (S = 'Riga') then
    res := [Riga];

  GetCity := res;
end;

function GetCities(S : String) : way;
var
  i,j : integer;
  res : way;
begin
  res := [];

  i := 1;
  j := 1;
while (i < length(S)) do begin
  while (j <= length(S)) AND (S[j] <> ' ') do
    inc(j);
    
  res := res + GetCity(Copy(s, i, j-i+ord(j = length(S))));

  i := j+1;
  j := j+2;
end;

  GetCities := res;
end;

var
  N,i,pos : integer;
  Ar : travs;
  S : string;
  All,None : way;
  x : city;
  f : text;
  f1 : file of byte;
begin
  assign(f, 'in.txt');
  reset(f);
  readln(f, n);
  for i := 1 to N do begin
    readln(f, S);
    Ar[i] := GetCities(S);
    //writeln('## ', Ar[i]);
  end;
  close(f);

  All := [];
  None := [Perm..Riga];
  
  for i := 1 to N do begin
    All := All + Ar[i];
    None := None - Ar[i];
  end;
  
  append(f);
  writeln(f);
  
  write(f, 'Был хоть один: ');
  for x := Moscow to Riga do
    if (x in All) then write(f, x, ' ');
  writeln(f);

  write(f, 'Не был никто: ');
  for x := Moscow to Riga do
    if (x in None) then write(f, x, ' ');
  close(f);

end.