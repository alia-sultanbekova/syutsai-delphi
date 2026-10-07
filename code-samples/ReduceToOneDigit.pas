  function ReduceToOneDigit(Value: Integer): Integer;
  begin
    while Value > 9 do
    begin
      N := 0;

      while Value > 0 do
      begin
        N := N + (Value mod 10);
        Value := Value div 10;
      end;

      Value := N;
    end;

    Result := Value;
  end;