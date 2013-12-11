program p20;

const
  f1 = 'file1.bin';
  f2 = 'file2.bin';

procedure Start;
var
  f : file of integer;
  i,N : integer;
begin
  write('Введите N: ');
  readln(N);
  assign(f, f1);
  rewrite(f);
  for i := 1 to N do
    write(f, random(1000));
  close(f);
end;

function Sum(N : integer) : integer;
var
  M : integer;
begin
  M := 0;
  while (N > 0) do begin
    M += N mod 10;
    N := N div 10;
  end;
  Sum := M;
end;

procedure Task1;
var
  f_in, f_out : file of integer;
  N : integer;
begin
  assign(f_in, f1);
  assign(f_out, f2);

  reset(f_in);
  rewrite(f_out);

  while not eof(f_in) do begin
    read(f_in, N);
    if (Sum(N) mod 2 = 1) then
      write(f_out, N);
  end;

  close(f_in);
  close(f_out);
end;

procedure Task2;
var
  f : file of integer;
  N : integer;
begin
  assign(f, f2);
  reset(f);

  while(not eof(f)) do begin
    read(f, N);
    write(N, ' ');
  end;
  writeln;
  close(f);
end;

procedure Task3;
var
  f : file of integer;
  N,i : integer;
  A : array [1..3] of integer;
begin
  assign(f, f2);
  reset(f);

  A[1] := 1;
  A[2] := 2;
  A[3] := FileSize(f)-1;
  
  for i := 1 to 3 do begin
    Seek(f, A[i]);
    read(f, N);
    write(N, ' ');
  end;
  writeln;

  close(f);
end;

begin
  Start;
  Task1;
  Task2;
  Task3;
end.
