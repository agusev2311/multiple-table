var
    q: integer;

procedure ch;
begin
  q := random(1, 26);
  if q = 1 then write('A');
  if q = 2 then write('B');
  if q = 3 then write('C');
  if q = 4 then write('D');
  if q = 5 then write('E');
  if q = 6 then write('F');
  if q = 7 then write('G');
  if q = 8 then write('H');
  if q = 9 then write('I');
  if q = 10 then write('J');
  if q = 11 then write('K');
  if q = 12 then write('L');
  if q = 13 then write('M');
  if q = 14 then write('N');
  if q = 15 then write('O');
  if q = 16 then write('P');
  if q = 17 then write('Q');
  if q = 18 then write('R');
  if q = 19 then write('S');
  if q = 20 then write('T');
  if q = 21 then write('U');
  if q = 22 then write('V');
  if q = 23 then write('W');
  if q = 24 then write('X');
  if q = 25 then write('Y');
  if q = 26 then write('Z');
end;

procedure nu;
begin
   write(random(1, 9)); 
end;

begin
    ch;
    ch;
    ch;
    ch;
    write('-');
    nu;
    ch;
    nu;
    ch;
    write('-');
    ch;
    nu;
    ch;
    nu;
    write('-');
    ch;
    nu;
    ch;
    nu;
    readln();
end.