uses crt;
const
size = 6;
var 
a : array [1 .. size] of char;
b : char;
t:text;
i,j,x:integer;
begin
  clrscr;
assign(t,'C:\Users\c_class\Documents\Мутовкин\DKR-5_Мутовкин Михаил Юрьвеич_ИСпк-101-51-00');
  reset(t);
  writeln('Исходный массив:');
  while not Eof (t) do
    for i:= 1 to size do
    begin
      read(t,a[i]);
      write(a[i],' ');
    end;
  writeln;writeln('Отсортируем массив в порядке возрастания:');
  
 begin
   for i := 1 to size - 1 do
   for j := 1 to size - i do
   if a [j] > a[j + 1] then begin
     b := a [j];
     a [j] := a [j + 1];
     a[j + 1] := b
   end;
 end;
  for i:=1 to size do write (a[i], ' ');
  close (t);
end.
