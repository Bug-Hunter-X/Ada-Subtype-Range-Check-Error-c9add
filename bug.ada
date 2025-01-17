```ada
procedure Example is
   subtype My_Subtype is Integer range 1..10;
   X : My_Subtype := 1;
begin
   X := X + 5;  -- Potential error if X + 5 exceeds My_Subtype range
   if X > 10 then
      Put_Line("Error: X is out of range");
   end if;
end Example;
```