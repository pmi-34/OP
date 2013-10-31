program p21;
uses Num;

var
  x,y,z : Pfract;
begin
  New (x);
  New (y);

  write('Введите числитель и знаменатель дроби: ');
  readln(x^.a, x^.b);

  write('Введите числитель и знаменатель дроби: ');
  readln(y^.a, y^.b);

  z := f_div(x,y);

  writeln(z^.a, '/', z^.b);

end.
