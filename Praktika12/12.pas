program p12;

const
  FMT = 15;

type
  student = record
    surname, name : string;
    math,inf,phys : 2..5;
  end;
  PStudent = ^Student;

function GetField(hint : string) : integer;
var
  f : boolean;
  N : integer;
begin
  f := false;
  repeat
    write(hint);
    readln(N);
    f := (N >= 2) AND (N <= 5);
    if (not f) then
      writeln('Ты - хуй');
  until f;
  GetField := N;
end;

procedure PrintRes(A : array of pstudent; N : integer);
var
  f : text;
  i : integer;
begin
  assign(f, 'out.txt');
  rewrite(f);
  writeln(f, 
          'Фамилия':FMT, 
          'Имя':FMT, 
          'Математика':FMT, 
          'Информатика':FMT,
          'Физика':FMT);
  for i := 1 to N-1 do begin
    if ((A[i]^.math > 2) AND
        (A[i]^.inf > 2)  AND
        (A[i]^.phys > 2)) 
    then begin
    writeln(f,
            A[i]^.surname:FMT,
            A[i]^.name:FMT,
            A[i]^.math:FMT,
            A[i]^.inf:FMT,
            A[i]^.phys:FMT);
    end;
  end;
  close(f);
end;

var
  A : array [0..100] of pstudent;
  N : integer;
  c : char;
begin
  N := 0;
  repeat
    New(A[n]);
    write('Фамилия: ');
    readln(A[n]^.surname);
    write('Имя: ');
    readln(A[n]^.name);
    A[n]^.math := GetField('Математика: '); 
    A[n]^.inf := GetField('Информатика: ');
    A[n]^.phys := GetField('Физика: ');
    inc(n);
    write('Продолжить ввод? [y/N]: ');
    readln(c);
  until upcase(c) <> 'Y';

  PrintRes(A, N);

  while (n > 0) do begin
    Dispose(A[n]);
    dec(n);
  end;
end.
