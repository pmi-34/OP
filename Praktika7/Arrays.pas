unit Arrays;

interface
const NMax = 100;
{A[0] = число элементов}
type 
  TArray = array [0..NMax] of integer;
  AReadCallback = procedure (var f : text);

{Считывает массив из файла}
procedure ReadA(fname : string; var A : TArray);
{То же, но позволяет задать дополнительные условия}
procedure ReadAC(fname : string; var A : TArray; C : AReadCallback);
{Записывает массив в файл}
procedure WriteA(fname : string; var A : TArray);
{Заполняет массив случайными значениями}
procedure RandomA(var A : TArray; N : integer);

{Вставляет элемент в массив}
procedure InsertA(var A : TArray; i, X : integer);
{Удаляет элемент из массива}
procedure DeleteA(var A : TArray; i : integer);

{Для отладки}
procedure DebugA(var A : TArray);

implementation

procedure ReadA(fname : string; var A : TArray);
begin
  ReadAC(fname, A, nil);
end;

procedure ReadAC(fname : string; var A : TArray; C : AReadCallback);
var
  f : text;
  i : integer;
begin
  assign(f, fname);
  reset(f);
  read(f, A[0]);
 
  if (C <> nil) then
    C(f);
  
  for i := 1 to A[0] do
    read(f, A[i]);

  close(f);
end;

procedure WriteA(fname : string; var A : TArray);
var
  f : text;
  N : integer;
begin
  assign(f, fname);
  rewrite(f);
  writeln(f, A[0]);

  for N := 1 to A[0] do
    write(f, A[N], ' ');

  writeln(f);
  close(f);
end;

procedure RandomA(var A : TArray; N : integer);
begin
  A[0] := N;
  for N := A[0] downto 1 do
    A[N] := random(100);
end;

procedure InsertA(var A : TArray; i, X : integer);
var
  j : integer;
begin
  for j := A[0] downto i do
    A[j+1] := A[j];
  inc(A[0]);
  A[i] := X;
end;

procedure DeleteA(var A : TArray; i : integer);
var
  j : integer;
begin
  for j := i to A[0]-1 do
    A[j] := A[j+1];
  dec(A[0]);
end;

procedure DebugA(var A : TArray);
var
  i : integer;
begin
  writeln('Length = ',A[0]);
  for i := 1 to A[0] do
    write('[',A[i],'], ');
  writeln;
end;

end.
