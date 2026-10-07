function GetNameEnergy(const Name: string): Integer;
var
  I: Integer;
  Sum: Integer;
  Ch: Char;
begin
  Sum := 0;

  // Переводим каждую букву имени в число
  for I := 1 to Length(Name) do
  begin
    Ch := UpCase(Name[I]);

    case Ch of
      'A', 'I', 'J', 'Q', 'Y':
        Sum := Sum + 1;

      'B', 'K', 'R':
        Sum := Sum + 2;

      'C', 'L', 'S', 'G':
        Sum := Sum + 3;

      'D', 'M', 'T':
        Sum := Sum + 4;

      'E', 'H', 'N', 'X':
        Sum := Sum + 5;

      'U', 'V', 'W':
        Sum := Sum + 6;

      'O', 'Z':
        Sum := Sum + 7;

      'F', 'P':
        Sum := Sum + 8;
    end;
  end;

  // Приводим к однозначному числу
  while Sum >= 10 do
  begin
    Sum := (Sum div 10) + (Sum mod 10);
  end;

  Result := Sum;
end;
