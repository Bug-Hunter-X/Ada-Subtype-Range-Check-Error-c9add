```ada
procedure Example is
   subtype My_Subtype is Integer range 1..10;
   X : My_Subtype := 1;
begin
   if X + 5 <= 10 then
      X := X + 5;
   else
      Put_Line("Error: Result exceeds subtype range");
      -- Handle the situation appropriately - perhaps choose a maximum value or raise a custom exception
      X := 10; -- Example: Setting X to the maximum value
   end if;
   Put_Line("X = " & Integer'Image(X));
end Example;
```