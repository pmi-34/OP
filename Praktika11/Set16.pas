uses
  PT4;
{$DEFINE USEPT4}

type
  Digits = 0..9;
  SetDigits = set of Digits;

procedure PrintRes (m :SetDigits);
var
  i : Digits;
  f : boolean;
begin
  f := true;
  for i := 9 downto 0 do
    if (i in m) then begin
      f := false;
      writeln(i);
    end;
    
  if (f) then
    writeln('No digits!');
end;

function ReadNums : SetDigits;
var
  m,i,x :integer;
  res,t : SetDigits;
begin
  readln(m);
  res := [0,1,2,3,4,5,6,7,8,9];
  for i := 1 to m do begin
    read(x);
    t := [];
    while (x <> 0) do begin
      t := t + [abs(x mod 10)];
      {$IFNDEF USEPT4}
      writeln('## ', abs(x mod 10));
      {$ENDIF}
      x := x div 10;
    end;
    {$IFNDEF USEPT4}
    PrintRes(t);
    {$ENDIF}
    res := res*t;
  end;
  
  ReadNums := Res;
end;

begin
{$IFDEF USEPT4}
  Task('six16');  
{$ENDIF}
  PrintRes(ReadNums);
end.

