program p6;
{Горите в аду, уебища!}

uses UDate, sysutils; {Для StrToIntDef}

type
  date = packed record
    day: byte;
    month: byte;
  end;

function Determine(N : integer) : string;
begin
  case N of
    20..49:
      Determine := 'Водолей';
    50..79:
      Determine := 'Рыбы';
    80..109:
      Determine := 'Овен';
    110..140:
      Determine := 'Телец';
    141..172:
      Determine := 'Близнецы';
    173..203:
      Determine := 'Рак';
    204..234:
      Determine := 'Лев';
    235..265:
      Determine := 'Дева';
    266..295:
      Determine := 'Весы';
    296..326:
      Determine := 'Скорпион';
    327..355:
      Determine := 'Стрелец'
    else
      Determine := 'Козерог';
  end;
end;

procedure Determine(p : date);
var
  N : integer;
begin
  write('Человек, родившийся ', p.day, ', ', GetMonthName(p.month), ' по знаку зодиака ');
  N := p.day;
  while (p.month > 1) do begin
    p.month -= 1;
    N += GetDaysInMonth(p.month);
  end;
  //writeln('Пидорас');
  writeln(Determine(N));
end;

var
  p : date;
  N : integer;
  S : string;
  f : boolean;
begin
  f := false;
  p.day := 0;
  p.month := 0;

  repeat
    write('Введите дату рождения: ');
    readln(S);
    N := Pos('.', S);
    with p do begin
      day := StrToIntDef(Copy(S, 1, N-1), 0);
      month := StrToIntDef(Copy(S, N+1, length(S)), 0);
    end;
    
    if ((p.day >= 1) AND (p.day <= 31) AND
       (p.month >= 1) AND (p.month <= 12)) then
     f := true
   else
     writeln('Сосите хуй, пожалуйста');
  until f;

  Determine(p);
end.
