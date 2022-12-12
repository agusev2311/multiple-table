uses GraphABC;

var
    fon: picture;
    dt: DateTime := DateTime.Now;
    numberans: integer = 0;

begin
    Window.Title := 'Multiple Table';
    if (((dt.Day = 1) or (dt.Day = 2) or (dt.Day = 3) or (dt.Day = 4) or (dt.Day = 4) or (dt.Day = 5) or (dt.Day = 6)) and (dt.Month = 1)) or (((dt.Day = 26) or (dt.Day = 27) or (dt.Day = 28) or (dt.Day = 29) or (dt.Day = 30) or (dt.Day = 31)) and (dt.Month = 12)) then
        fon := picture.Create('textures\Новый год.jpg')
    else if (dt.Month = 12) or (dt.Month = 1) or (dt.Month = 2) then
        fon := picture.Create('textures\снежок.jpg')
    else if (dt.Month = 4) or (dt.Month = 5) or (dt.Month = 3) then
        fon := picture.Create('textures\Для весны.jpg')
    else if (dt.Month = 7) or (dt.Month = 8) or (dt.Month = 6) then
        fon := picture.Create('textures\Для лета.jpg')
    else if (dt.Month = 10) or (dt.Month = 11) or (dt.Month = 9) then 
        fon := picture.Create('textures\Осенние листья.jpg');
    fon.Draw(1, 1, 640, 480);
    //TextOut(1, x, '');
    TextOut(1, 5, 'Эта игра!');
    SetFontColor(clGray);
    TextOut(1, 30, 'Для продолжения нажмите ENTER!');
    readln();
    fon.Draw(1, 1, 640, 480);
    SetFontColor(clGreen);
    TextOut(1, 30, 'Правила:');
    TextOut(1, 45, '1) Вам выводяться 2 числа от 1 до 10.');
    TextOut(1, 60, '2) Вы должны ввести ответ.');
    TextOut(1, 75, '3) Если вы хотите завершить игру (закрыть программу), вы вводите 0.');
    TextOut(1, 90, '4) Если вы не знаете ответ, вы можете пропустить этот уровень введя 999.');
    TextOut(1, 105, '5) Вы можете пропустить ответ 2 раза.');
    TextOut(1, 120, '6) Если вы неправильно ввели ответ, то вам будет доваться ещё одна жизнь.');
    TextOut(1, 135, '7) Всего жизней 4.');
    SetFontColor(clBlack);
    TextOut(1, 5, 'Эта игра!');
    SetFontColor(clRed);
    TextOut(1, 160, 'Для начала игры нажмите ENTER!');
    SetFontColor(clBlack);
    readln();
    var qwerty: boolean = false;
    if ((dt.Day = 1 or 2 or 3 or 4 or 5 or 6 or 7) and (dt.Month = 1)) or ((dt.Day = 26 or 27 or 28 or 29 or 30 or 31) and (dt.Month = 12)) then begin
        fon := picture.Create('textures\Новый год.jpg');
    end else begin
        fon := picture.Create('textures\Фон игры.jpg');
    end;
    fon.Draw(1, 1, 640, 480);
    SetFontSize(40);
    var n1, n2, otv: integer;
    var prop: integer = 2;
    var osh: integer = 3;
    //randomize;
    while true do
    begin
        fon.Draw(1, 1, 640, 480);
        SetFontColor(clBlack);
        if qwerty = false then n1 := random(1, 10);
        if qwerty = false then n2 := random(1, 10);
        qwerty := false;
        SetFontSize(40);
        TextOut(20, 1, n1);
        TextOut(100, 1, 'X');
        TextOut(150, 1, n2);
        readln(otv);
        if otv = 0 then
            break
        else if otv = 999 then begin
            if prop > 0 then begin
                prop := prop - 1;
            end else begin
                SetFontColor(clRed);
                SetFontSize(20);
                TextOut(1, 50, 'Не осталось пропусков');
                sleep(2000);
                qwerty := true;
            end;
        end else if otv = n1 * n2 then begin
            numberans := numberans + 1;
        end else begin
            if osh > 0 then begin
                SetFontColor(clRed);
                SetFontSize(20);
                TextOut(50, 150, 'Не правильный ответ! Правильный ответ - ');
                TextOut(50, 200, n1 * n2);
                if osh = 2 then TextOut(60, 250, 'У вас осталось 2 жизни!');
                if osh = 1 then TextOut(60, 250, 'У вас осталось 1 жизнь!');
                if osh = 3 then TextOut(60, 250, 'У вас осталось 3 жизни!');
                osh := osh - 1;
                sleep(2000);
            end else begin
                fon := picture.Create('Game Over.jpg');
                fon.Draw(1, 1, 640, 480);
                SetFontColor(clRed);
                SetFontSize(20);
                TextOut(1, 50, 'Не правильный ответ! Правильный ответ - ');
                TextOut(50, 100, n1 * n2);
                TextOut(1, 150, 'Вы правильно решили');
                TextOut(50, 200, numberans);
                TextOut(1, 250, 'задач.');
                TextOut(20, 1, n1);
                TextOut(100, 1, 'X');
                TextOut(150, 1, n2);
                break;
            end;
        end;
    end;
end.