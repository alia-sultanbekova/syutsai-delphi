procedure TForm1.AddPhoneEnergy(WordDoc: OleVariant);
var
  Phone: string;
  I: Integer;
  Sum: Integer;
  PhoneEnergy: Integer;
begin
  Phone := Trim(Edit3.Text);

  // Если номер телефона не введён, ничего не добавляем
  if Phone = '' then
    Exit;

  Sum := 0;

  // Складываем только цифры номера телефона
  for I := 1 to Length(Phone) do
  begin
    if CharInSet(Phone[I], ['0'..'9']) then
      Sum := Sum + StrToInt(Phone[I]);
  end;

  // Если цифр нет, пропускаем расчёт
  if Sum = 0 then
    Exit;

  // Используем существующую функцию
  PhoneEnergy := ReduceToOneDigit(Sum);

  // Выводим результат в Word

  AddText(WordDoc, #13#10 + 'Энергия номера телефона ', True, 12);

  AddText(WordDoc,
    Phone + ' - ' + IntToStr(PhoneEnergy) +
    ' (Смотрите значение Вашей цифры выше в таблице «Энергия цифр»).' + #13#10,
    False, 12);
end;
