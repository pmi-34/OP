unit UDate;

interface

function GetDaysInMonth(m : integer) : integer;
function GetMonthName(N : integer) : string;

implementation

const 
  MonthNames : array [1..12] of string =  (
    'января', 
    'февраля', 
    'марта', 
    'апреля', 
    'мая', 
    'июня', 
    'июля', 
    'августа', 
    'сентября', 
    'октября', 
    'ноября', 
    'декабря');

function GetDaysInMonth(m : integer): integer;
begin
  case m of
    1,3,5,7,8,10,12:
      GetDaysInMonth := 31;
    4,6,9,11:
      GetDaysInMonth := 30;
    2:
      GetDaysInMonth := 28;
  end;
end;

function GetMonthName(N : integer) : string;
begin
  if ((N >= 1) AND (N <= 12)) then
    GetMonthName := MonthNames[N]
  else
    GetMonthName := 'хуября';
end;

end.
