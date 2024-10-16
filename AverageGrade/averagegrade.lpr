program averagegrade;

var
  GradeA, GradeB, GradeC: array[1..27] of integer;
  sumA, sumB, sumC, totalSum, index: integer;
  averageA, averageB, averageC, totalAverage: real;

begin
Randomize;
sumA := 0;
sumB := 0;
sumC := 0;
for index := 1 to 27 do
begin
  GradeA[index] := random(4) + 2;
  GradeB[index] := random(4) + 2;
  GradeC[index] := random(4) + 2;
  sumA := sumA + GradeA[index];
  sumB := sumB + GradeB[index];
  sumC := sumC + GradeC[index];
end;
averageA := sumA / 27;
averageB := sumB / 27;
averageC := sumC / 27;

totalSum := sumA + sumB + sumC;
totalAverage := totalSum / (27 * 3);

writeln('Average grade of exam A: ', averageA:0:2);
writeln('Average grade of exam B: ', averageB:0:2);
writeln('Average grade of exam C: ', averageC:0:2);

writeln('Average group grade: ', totalAverage:0:2);
readln;
end.
