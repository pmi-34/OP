program test;

uses NumConv;

var
  A, B : TNum;

begin
  A := '1ab5FD';

  Decode(A, B, 16, 2);

  Print(B);
end.
