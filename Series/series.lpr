program series;

var
  A, sum, product, index, An, i, Result, cnt: integer;

begin
  A := 1;
  sum := 0;
  product := 1;
  while true do
  begin
      writeln('Type count of numbers');
      readln(cnt);
      if (cnt > 1) then break;
      writeln('Invalid count');
  end;


  for index := 2 to cnt do
  begin
    Result := 1;
    for i := 1 to index do
    begin
        Result := Result * A;
    end;

    An := 1 + Result;
    if An mod 2 = 0 then sum := sum + An
    else product := product * An;
    A := An;
  end;
  writeln('Sum of even numbers row: ', sum);
  writeln('The product of odd numbers row: ', product);
  readln;
end.
