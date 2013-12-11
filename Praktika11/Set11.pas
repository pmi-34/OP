program p11;

type
  Letters = (a, e, i, o, u, y);
  SetLetters = set of Letters;

function GetLetter(c : char) : SetLetters;
var
  res : SetLetters;
begin
  res := [];
  case c of
      'a' : res := [a];
      'i' : res := [i];
      'e' : res := [e];
      'o' : res := [o];
      'u' : res := [u];
      'y' : res := [y];
  end;
  GetLetter := res;
end;

function FindLetters(S : string) : SetLetters;
var
  res,t1,t2 : SetLetters;
  i1,i2 :integer;
  i3 : Letters;
  A1 : array [1..10] of SetLetters;
  N : integer;
begin
  res := [];
  t1 := [];
  
  N := 1;
  
  for i1 := 1 to 10 do
    A1[i1] := [];
  
  for i1 := 1 to length(S) do begin
    if (S[i1] = ' ') then inc(N)
    else A1[N] := A1[N] + GetLetter(S[i1])
  end;
  
  for i1 := 1 to N do begin
    t1 := [];
    for i2 := 1 to N do
      if (i1 <> i2) then
        t1 := t1 + A1[i2];
        
    for i3 := a to y do
      if (i3 in A1[i1]) AND (not (i3 in t1)) then
        res := res + [i3];
  end;
  
  FindLetters := res;
end;

procedure PrintRes (m :SetLetters);
var
  i : Letters;
  f : boolean;
begin
  f := true;
  writeln('Итог:');
  for i := a to y do
    if (i in m) then begin
      f := false;
      writeln(i);
    end;
    
  if (f) then
    writeln('No letters!');
end;

var
  S : string;
begin
  readln(S);
  PrintRes(FindLetters(S));
end.