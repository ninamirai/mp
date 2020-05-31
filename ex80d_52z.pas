program ex80d_52z;
  var s,n,t,i:integer;
  a:array[1..100] of integer;
begin
  writeln('добрый день ');
  
  writeln('введите n: ');
  readln(n);
  writeln('введите числа: ');
  //
  i:=1;
  repeat
    read(a[i]);
    Inc(i);
  until i>n;
  //
  s:=0;
  t:=-1;
  for i:=1 to n do
        begin
          t:=t*(-1);
          s:=s+a[i]*t;
        end;
  writeln('for: ', s);
  
  s:=0;
  t:=-1;
  for i:=n downto 1 do
        begin
          t:=t*(-1);
          s:=s+a[i]*t;
        end;
  writeln('обратный for: ', s);
  
  t:=-1;
  i:=1;
  s:=0;
  while i<=n do
        begin
          t:=t*(-1);
          s:=s+a[i]*t;
          Inc(i);
        end;
  writeln('while: ', s);
  
  t:=-1; 
  i:=1;
  s:=0;  
  repeat
    t:=t*(-1);
    s:=s+a[i]*t;
    Inc(i);
  until i>n;
  writeln('repeat: ', s);
end.