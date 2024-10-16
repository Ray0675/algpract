program coordinates;

uses crt;

var
    index, cnt, cntIn : integer;
    r, posX, posY, circleX, circleY : real;
begin
    write('Write count points: ');readln(cnt);
    write('Write radius: ');readln(r);
    writeln('Write pos center circle: ');
    readln(circleX, circleY);
    for index := 1 to cnt do
    begin
      writeln('Write pos ', index,' point: ');
      readln(posX, posY);
      if (sqr(posX - circleX) + sqr(posY - circleY) <= sqr(r)) then
      begin
         writeln('This point in circle');
         cntIn += 1;
      end
      else writeln('This point out of circle');
    end;
    write('Points in circle: ');
    writeln(cntIn);
    readln;
end.

