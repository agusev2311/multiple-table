uses GraphABC, system, ABCButtons;

var
    fon: picture;
    but_start: picture;
    but_education: picture;
    but_settings: picture;
    but_exit: picture;

var
    dt: DateTime := DateTime.Now;

var
    b_start: ButtonABC;
    b_education: ButtonABC;
    b_settings: ButtonABC;
    b_exit: ButtonABC;

var
    reshim: integer = 0;

procedure p_start();
begin
    //window.Clear;
    //fon.Draw(0, 0, 640, 480);
    textout(10, 10, 'Пока это тоже самое что и education. Играйте в него.');
    reshim := 1;
end;

procedure p_education();
begin
    //    window.Clear;
    //    fon.Draw(0, 0, 640, 480);
    //    textout(10, 10, 'Вам выводиться пример из таблицы умножения, и вы должны его решить.');
    //    SetFontColor(clOrange);
    //    SetFontSize(20);
    //    while true do
    //    begin
    //        println(6, 'X', 7);
    //        readln(var otvet: integer);
    //        if otvet = 7 * 6 then else begin
    //            println(10, 10, 'Неправильно. Правильный ответ: ', 6 * 7);
    //            println(10, 30, 'Для продолжения нажмите ENTER');
    //            readln();
    //        end;
    //    end;
    reshim := 2;
end;

procedure p_settings();
begin
    window.Clear;
    fon.Draw(0, 0, 640, 480);
    reshim := 2;
end;

procedure p_exit();
begin
    Window.Close;
end;

begin
    Window.Title := 'Multiple Table';
    if ((dt.Day = 1 or 2 or 3 or 4 or 5 or 6 or 7) and (dt.Month = 1)) or ((dt.Day = 26 or 27 or 28 or 29 or 30 or 31) and (dt.Month = 12)) then begin
        fon := picture.Create('Новый год.jpeg');
    end else if dt.Month = 12 or 1 or 2 then begin
        fon := picture.Create('Cнег.jpeg');
    end else if dt.Month = 4 or 5 or 3 then begin
        fon := picture.Create('Для весны.jpeg');
    end else if dt.Month = 7 or 8 or 6 then begin
        fon := picture.Create('Для лета.jpeg');
    end else if dt.Month = 10 or 11 or 9 then begin
        fon := picture.Create('Осенние листья.jpeg');
    end;
    but_start := picture.Create('button_play_black.png');
    but_education := picture.Create('button_education_off.png');
    but_settings := picture.Create('button_settings_off.png');
    but_exit := picture.Create('button_exit.png');
    
    fon.Draw(0, 0, 640, 480);
    b_start := new ButtonABC(200, 30, 240, 80, '', clTransparent);
    b_start.OnClick := p_start; 
    but_start.Draw(200, 30, 240, 80);
    
    b_education := new ButtonABC(200, 120, 240, 80, '', clTransparent);
    b_education.OnClick := p_education; 
    but_education.Draw(200, 120, 240, 80);
    
    b_settings := new ButtonABC(200, 210, 240, 80, '', clTransparent);
    b_settings.OnClick := p_settings; 
    but_settings.Draw(200, 210, 240, 80);
    
    b_exit := new ButtonABC(570, 410, 70, 70, '', clTransparent);
    b_exit.OnClick := p_exit; 
    but_exit.Draw(570, 410, 70, 70);
end.