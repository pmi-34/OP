program p10;

uses SysUtils,UDate;
type 
  employee = record
    surname, name, sname : string;
    city, address: string;
    year, month, day: word;
  end;

function GetField(var S : string) : string;
var
  i : integer;
  tmp : string;
const
  d = ' ';
begin
  i := Pos(d, S);
  if (i = 0) then i := length(S)+1;
  tmp := Copy(S, 1, i-1);
  Delete(S, 1, i);
  GetField := tmp;
end;

procedure ReadRec(var f : text; var p : employee);
var
  S : string;
  i : integer;
begin
  readln(f, S);

  p.surname := GetField(S);
  p.name := GetField(S);
  p.sname := GetField(S);
  p.city := GetField(S);
  p.address := GetField(S);
  p.day := StrToInt(GetField(S));
  p.month := StrToInt(GetField(S));
  p.year := StrToInt(GetField(S));
end;

function GetTimestamp(p : employee) : integer;
var
  r : integer;
const
  fyear = 2000;
begin
  r := p.day + (p.year - fyear)*365;
  while (p.month > 1) do begin
    dec(p.month);
    r += GetDaysInMonth(p.month);
  end;
  GetTimestamp := r;
end;

function ThreeYearWorker(var p : employee) : boolean;
const
  X : employee = (
    surname: '';
    name: '';
    sname: '';
    city: '';
    address: '';
    year: 2013;
    month: 12;
    day: 12
   );
begin
  if (GetTimestamp(X) - GetTimestamp(P) > 365*3) then
    ThreeYearWorker := true
  else
    ThreeYearWorker := false;
end;

var
  f : text;
  i,N : integer;
  A : array [1..20] of employee;
  S : string;
begin
  assign(f, 'in10.txt');
  reset(f);
  readln(f, N);

  for i := 1 to N do
    ReadRec(f, A[i]);
  close(f);
  assign(f, 'out.txt');
  rewrite(f);
  write('Введите интересующий вас город: ');
  readln(S);

  for i := 1 to N do
    if (A[i].city = S) AND (ThreeYearWorker(A[i])) then
      writeln(f,
              A[i].surname, ' ',
              A[i].name, ' ',
              A[i].sname, ' ',
              A[i].address
             );
  close(f);
end.
