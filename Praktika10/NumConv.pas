unit NumConv;

interface

type
  TNum = ansistring;

procedure Decode(var _from, _to: TNum; frombase, tobase : integer);

procedure Print(_num : TNum);

implementation

//{$DEFINE DEBUG}

function digit(c : char) : byte;
begin
  case c of
    'A'..'Z','a'..'z':
      digit := ord(upcase(c)) - ord('A') + 10;
    '0'..'9':
      digit := ord(c) - ord('0');
    else
      digit := 0;
  end;
end;

procedure Decode(var _from, _to: TNum; frombase, tobase : integer);
var
  j : integer;
  i : int64;
begin
  j := 1;
  i := 0;

  while (_from[j] <> chr(0)) do begin
    i := i*frombase + digit(_from[j]);
    {$IFDEF DEBUG}
    write(i, '[', upcase(_from[j]), ']', '->');
    {$ENDIF}
    inc(j)
  end;

  {$IFDEF DEBUG}
  writeln(i);
  {$ENDIF}

  _to := '';
  while (i > 0) do begin
    _to := chr((i mod tobase) + ord('0')) + _to;
    i := i div tobase;
  end;
end;

procedure Print(_num : TNum);
var
  i : integer;
begin
  i := 1;
  while (_num[i] <> chr(0)) do begin
    write(_num[i]);
    inc(i);
  end;
  writeln;
end;

end.
