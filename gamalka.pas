uses GraphABC, Sounds;

const
    ultra_count = 12;

const
    premium_count_2022 = 1;
    premium_count_2023 = 1;

var
    ultra_nickname: array [1..12] of string := ('agusev2311',   'LlLl', 'iVeronika',    'ThePrimeNumber',  'ricopin', 'dronzik', 'senia',  'jimokjy', 'NEWNEG11', '', '');
    ultra_password: array [1..12] of string := ('KIKLKJKM2311', 'lLlL', 'Veronika2012', '1303',            '9911',    'ninka',   'Ksu26',  '918_918', 'NEG11', '', '');                                                                                                       
    premium_nickname_2022: array [1..5] of string := ('', '', '', '', '');
    premium_password_2022: array [1..5] of string := ('', '', '', '', '');
    premium_nickname_2023: array [1..5] of string := ('', '', '', '', '');
    premium_password_2023: array [1..5] of string := ('', '', '', '', '');
    text: text;
    Y: integer = 640;
    Z: integer = 480;

var
    fon: picture;
    particle1: picture;
    particle2: picture;
    particle3: picture;
    dt: DateTime := DateTime.Now;
    numberans: integer = 0;
    reck: integer;

procedure foncre;
begin
    Window.Clear;
    fon.Draw(0, 0, 640, 480);
end;

procedure load;
begin
    clearWindow(clBlack);
    fon := picture.Create('textures\fons\loading.png');
    fon.Draw(20, 20, 20 + 228, 20 + 45);
end;

begin
    load;
    //numberans := 299;
    SetBrushColor(clTransparent);
    Window.Title := 'Multiple Table';
    Window.IsFixedSize := true;
    particle1 := picture.Create('textures\particle\сердце.png');
    particle2 := picture.Create('textures\particle\сердце2.png');
    particle3 := picture.Create('textures\particle\сердце3.png');
    SetFontSize(15);
    SetFontStyle(fsBoldItalic);
    assign(text, 'saves/education.txt');
    var ed: string;
    reset(text);
    read(text, ed);
    close(text);
    if ed <> 'true' then begin
        if (((dt.Day = 1) or (dt.Day = 2) or (dt.Day = 3) or (dt.Day = 4) or (dt.Day = 4) or (dt.Day = 5) or (dt.Day = 6)) and (dt.Month = 1)) or (((dt.Day = 26) or (dt.Day = 27) or (dt.Day = 28) or (dt.Day = 29) or (dt.Day = 30) or (dt.Day = 31)) and (dt.Month = 12)) then
            fon := picture.Create('textures\fons\Новый год.jpg')
        else if (dt.Month = 12) or (dt.Month = 1) or (dt.Month = 2) then
            fon := picture.Create('textures\fons\снежок.jpg')
        else if (dt.Month = 4) or (dt.Month = 5) or (dt.Month = 3) then
            fon := picture.Create('textures\fons\Для весны.jpg')
        else if (dt.Month = 7) or (dt.Month = 8) or (dt.Month = 6) then
            fon := picture.Create('textures\fons\Для лета.jpg')
        else if (dt.Month = 10) or (dt.Month = 11) or (dt.Month = 9) then 
            fon := picture.Create('textures\fons\Осенние листья.jpg');
        foncre;
        SetFontColor(clWhite);
        TextOut(1, 5, 'Это игра!');
        SetFontColor(clLightGray);
        TextOut(1, 30, 'Для продолжения нажмите ENTER!');
        readln();
        foncre;
        SetFontSize(11);
        SetFontStyle(fsBoldItalic);
        SetFontColor(clGold);
        TextOut(1, 30, 'Правила:');
        TextOut(1, 45, '1) Вам выводятся 2 числа от 1 до 10.');
        TextOut(1, 60, '2) Вы должны ввести их произведение.');
        TextOut(1, 75, '3) Если вы хотите завершить игру (закрыть программу), вы вводите 0.');
        TextOut(1, 90, '4) Если вы не знаете ответ, вы можете пропустить этот уровень введя 999.');
        TextOut(1, 105, '5) Вы можете пропустить ответ только 2 раза.');
        TextOut(1, 120, '6) Если вы неправильно ввели ответ, то вам будет даваться ещё жизнь.');
        TextOut(1, 135, '7) Всего 3 жизни.');
        TextOut(1, 150, '8) Всего в игре 4 уровня:');
        TextOut(1, 165, '    1 уровень - от 1 до 10,');
        TextOut(1, 180, '    2 уровень - от 11 до 15,');
        TextOut(1, 195, '    3 уровень - от 16 до 30,');
        TextOut(1, 210, '    4 уровень - от 31 до 99 (только для пользователей с Premium).');
        TextOut(1, 225, '9) В каждом уровне 100 примеров.');
        TextOut(1, 240, '10) При прохождении 3 уровней вас ждёт награда!!');
        SetFontColor(clWhite);
        TextOut(1, 5, 'Это игра!');
        SetFontColor(clLightGray);
        TextOut(1, 265, 'Для продолжения нажмите ENTER!');
        readln();
        assign(text, 'saves/Premium/nickname.txt');
        reset(text);
        read(text, ed);
        foncre;
        if ed = 'don''t_have' then begin
            TextOut(1, 30, 'Есть ли у вас Premium');
            TextOut(1, 45, 'Введите "да" или "нет"');
            var jsfywauvbai: string;
            readln(jsfywauvbai);
            foncre;
            if jsfywauvbai = 'да' then begin
                TextOut(1, 30, 'Это прекрасно!');
                TextOut(1, 45, 'Введите логин!');
                var gyuvaevuxqvgrwfcjwnqbfuycvg: string;
                read(gyuvaevuxqvgrwfcjwnqbfuycvg);
                var fguvneurgvrstegur: boolean = false;
                for var bhafhuyr := 1 to ultra_count do
                begin
                    if gyuvaevuxqvgrwfcjwnqbfuycvg = ultra_nickname[bhafhuyr] then fguvneurgvrstegur := true;
                end;
                for var bhafhuyr := 1 to premium_count_2022 do
                begin
                    if (gyuvaevuxqvgrwfcjwnqbfuycvg = premium_nickname_2022[bhafhuyr]) and (gyuvaevuxqvgrwfcjwnqbfuycvg <> '') and (dt.Year = 2022) then fguvneurgvrstegur := true;
                end;
                for var bhafhuyr := 1 to premium_count_2023 do
                begin
                    if (gyuvaevuxqvgrwfcjwnqbfuycvg = premium_nickname_2023[bhafhuyr]) and (gyuvaevuxqvgrwfcjwnqbfuycvg <> '') and (dt.Year = 2023) then fguvneurgvrstegur := true;
                end;
                foncre;
                if fguvneurgvrstegur = true then
                begin
                    TextOut(1, 30, 'Такой ник есть в базе данных.');
                    TextOut(1, 45, 'Теперь впишите пароль!');
                    readln();
                end
                else if fguvneurgvrstegur = false then
                begin
                    TextOut(1, 30, 'Такой ник отсутствует в базе данных.');
                    TextOut(1, 45, 'Вам нужно закрыть программу!');
                    while true do begin
                      
                    end;
                end;
            end else if jsfywauvbai = 'нет' then begin
                TextOut(1, 30, 'Хорошо.');
                TextOut(1, 45, 'Когда у вас появится Premium, перейдите в папку с игрой, найдите там этот файл ');
                TextOut(1, 60, 'saves/Premium/nickname.txt, откройте, и впишите don''t_have а также файл');
                TextOut(1, 75, 'saves/education.txt и впишите false');
                TextOut(1, 90, 'Для начала игры нажмите ENTER');
                readln();
            end;
        end else begin
            var prul: boolean = false;
            for var ultsch := 1 to ultra_count do
            begin
                if ed = ultra_nickname[ultsch] then prul := true;
            end;
            for var ultsch := 1 to premium_count_2022 do
            begin
                if dt.Year = 2022 then begin
                    if ed = premium_nickname_2022[ultsch] then prul := true;
                end;
            end;
            for var ultsch := 1 to premium_count_2023 do
            begin
                if dt.Year = 2023 then begin
                    if ed = premium_nickname_2023[ultsch] then prul := true;
                end;
            end;
        end;
        close(text);
        assign(text, 'saves/education.txt');
        rewrite(text);
        writeln(text, 'true');
        close(text);
    end;
    load;
    var qwerty: boolean = false;
    if ((dt.Day = 1 or 2 or 3 or 4 or 5 or 6 or 7) and (dt.Month = 1)) or ((dt.Day = 26 or 27 or 28 or 29 or 30 or 31) and (dt.Month = 12)) then begin
        fon := picture.Create('textures\Новый год.jpg');
    end else begin
        fon := picture.Create('textures\fons\Фон игры.jpg');
    end;
    foncre;
    SetFontSize(40);
    var n1, n2, otv: integer;
    var prop: integer = 2;
    var osh: integer = 2;
    var hard: picture;
    assign(text, 'saves/reck.txt');
    reset(text);
    read(text, reck);
    close(text);
    if reck < 101 then begin
        while true do
        begin
            foncre;
            SetFontColor(clWhite);
            if qwerty = false then n1 := random(1, 10);
            if qwerty = false then n2 := random(1, 10);
            qwerty := false;
            SetFontSize(20);
            SetFontColor(clRed);
            if reck < numberans then begin
                reck := numberans;
                assign(text, 'saves/reck.txt');
                rewrite(text);
                writeln(text, numberans);
                close(text);
            end;
            TextOut(300, 10, 'Вы решили:');
            TextOut(600, 10, numberans);
            TextOut(300, 35, 'Ваш рекорд:');
            TextOut(600, 35, reck);
            TextOut(300, 70, 'Осталось пропусков:');
            TextOut(600, 70, prop);
            if numberans = 100 then break;
            if osh = 2 then begin
                particle1.Draw(300, 95, 20, 20);
                particle1.Draw(320, 95, 20, 20);
                particle1.Draw(340, 95, 20, 20);
            end else if osh = 1 then begin
                particle1.Draw(300, 95, 20, 20);
                particle1.Draw(320, 95, 20, 20);
                particle2.Draw(340, 92, 20, 23);
            end else if osh = 0 then begin
                particle1.Draw(300, 95, 20, 20);
                particle2.Draw(320, 92, 20, 23);
                particle2.Draw(340, 92, 20, 23);
            end;
            SetFontColor(clWhite);
            SetFontSize(40);
            if n1 = 10 then TextOut(20, 1, n1)
            else TextOut(50, 1, n1);
            TextOut(100, 1, 'X');
            TextOut(150, 1, n2);
            readln(otv);
            if otv = 0 then
                Window.Close
            else if otv = 999 then begin
                if prop > 0 then begin
                    prop := prop - 1;
                end else begin
                    SetFontColor(clRed);
                    SetFontSize(20);
                    TextOut(40, 50, 'Не осталось пропусков');
                    readln();
                    qwerty := true;
                end;
            end else if otv = n1 * n2 then begin
                numberans := numberans + 1;
            end else if (otv <> n1 * n2) and (osh = 0) then begin
                fon := picture.Create('textures/fons/Game Over.jpg');
                foncre;
                SetFontColor(clRed);
                SetFontSize(20);
                TextOut(20, 50, 'Неправильно! Правильный ответ - ');
                TextOut(520, 50, n1 * n2);
                SetFontColor(clGreen);
                TextOut(20, 100, 'Вы правильно решили');
                TextOut(330, 100, numberans);
                TextOut(350, 100, 'задач.');
                SetFontColor(clWhite);
                TextOut(20, 1, n1);
                TextOut(100, 1, 'X');
                TextOut(150, 1, n2);
                particle2.Draw(200, 200, 50, 50);
                particle2.Draw(250, 200, 50, 50);
                particle2.Draw(300, 200, 50, 50);
                if numberans = reck then TextOut(20, 150, 'Вы побили (или почти побили) рекорд!');
                while true do
                begin
                    
                end;
            end else begin
                if osh > 0 then begin
                    SetFontColor(clRed);
                    SetFontSize(20);
                    TextOut(40, 150, 'Неправильно! Правильный ответ - ');
                    TextOut(540, 150, n1 * n2);
                    if osh = 2 then TextOut(40, 200, 'У вас осталось 2 жизни!');
                    if osh = 1 then TextOut(40, 200, 'У вас осталось 1 жизнь!');
                    osh := osh - 1;
                    readln();
                end else begin
                    fon := picture.Create('textures/fons/Game Over.jpg');
                    foncre;
                    SetFontColor(clRed);
                    SetFontSize(20);
                    TextOut(20, 50, 'Неправильно! Правильный ответ - ');
                    TextOut(520, 50, n1 * n2);
                    SetFontColor(clGreen);
                    TextOut(20, 100, 'Вы правильно решили');
                    TextOut(330, 100, numberans);
                    TextOut(350, 100, 'задач.');
                    SetFontColor(clBlack);
                    TextOut(20, 1, n1);
                    TextOut(100, 1, 'X');
                    TextOut(150, 1, n2);
                end;
            end;
        end;
    end;
    if reck < 201 then begin
        if (((dt.Day = 1) or (dt.Day = 2) or (dt.Day = 3) or (dt.Day = 4) or (dt.Day = 4) or (dt.Day = 5) or (dt.Day = 6)) and (dt.Month = 1)) or (((dt.Day = 26) or (dt.Day = 27) or (dt.Day = 28) or (dt.Day = 29) or (dt.Day = 30) or (dt.Day = 31)) and (dt.Month = 12)) then
            fon := picture.Create('textures\fons\Новый год.jpg')
        else if (dt.Month = 12) or (dt.Month = 1) or (dt.Month = 2) then
            fon := picture.Create('textures\fons\снежок.jpg')
        else if (dt.Month = 4) or (dt.Month = 5) or (dt.Month = 3) then
            fon := picture.Create('textures\fons\Для весны.jpg')
        else if (dt.Month = 7) or (dt.Month = 8) or (dt.Month = 6) then
            fon := picture.Create('textures\fons\Для лета.jpg')
        else if (dt.Month = 10) or (dt.Month = 11) or (dt.Month = 9) then 
            fon := picture.Create('textures\fons\Осенние листья.jpg');
        foncre;
        SetFontSize(15);
        SetFontStyle(fsBoldItalic);
        SetFontColor(clWhite);
        TextOut(1, 5, 'Поздравляю, вы, на 2 уровене!');
        SetFontColor(clLightGray);
        TextOut(1, 30, 'Для продолжения нажмите ENTER!');
        readln();
        foncre;
        numberans := 100;
        SetFontColor(clGold);
        SetFontSize(11);
        SetFontStyle(fsBoldItalic);
        TextOut(1, 30, 'Условия:');
        TextOut(1, 45, '1) Теперь вам будут даваться примеры с цифрами от 11 до 15.');
        TextOut(1, 60, '2) Вам добавлена 1 жизнь.');
        osh := osh + 1;
        TextOut(1, 75, '3) Если у вас было 3 жизни, то у Вас одно золотое сердце.');
        SetFontColor(clWhite);
        TextOut(1, 5, 'У вас 2 уровень!');
        SetFontColor(clRed);
        TextOut(1, 105, 'Для продолжения нажмите ENTER!');
        SetFontColor(clWhite);
        readln();
        if ((dt.Day = 1 or 2 or 3 or 4 or 5 or 6 or 7) and (dt.Month = 1)) or ((dt.Day = 26 or 27 or 28 or 29 or 30 or 31) and (dt.Month = 12)) then begin
            fon := picture.Create('textures\Новый год.jpg');
        end else begin
            fon := picture.Create('textures\fons\Фон игры.jpg');
        end;
        while true do
        begin
            foncre;
            SetFontColor(clWhite);
            if qwerty = false then n1 := random(11, 15);
            if qwerty = false then n2 := random(11, 15);
            qwerty := false;
            SetFontSize(20);
            SetFontColor(clRed);
            if reck < numberans then begin
                reck := numberans;
                assign(text, 'saves/reck.txt');
                rewrite(text);
                writeln(text, numberans);
                close(text);
            end;
            TextOut(300, 10, 'Вы решили:');
            TextOut(600, 10, numberans);
            TextOut(300, 35, 'Ваш рекорд:');
            TextOut(600, 35, reck);
            TextOut(300, 70, 'Осталось пропусков:');
            TextOut(600, 70, prop);
            if numberans = 200 then break;
            if osh = 2 then begin
                particle1.Draw(300, 95, 20, 20);
                particle1.Draw(320, 95, 20, 20);
                particle1.Draw(340, 95, 20, 20);
            end else if osh = 1 then begin
                particle1.Draw(300, 95, 20, 20);
                particle1.Draw(320, 95, 20, 20);
                particle2.Draw(340, 92, 20, 23);
            end else if osh = 0 then begin
                particle1.Draw(300, 95, 20, 20);
                particle2.Draw(320, 92, 20, 23);
                particle2.Draw(340, 92, 20, 23);
            end else if osh = 3 then begin
                particle1.Draw(300, 95, 20, 20);
                particle1.Draw(320, 95, 20, 20);
                particle1.Draw(340, 95, 20, 20);
                particle3.Draw(360 - 5, 95, 30, 30);
            end;
            SetFontColor(clWhite);
            SetFontSize(40);
            TextOut(20, 1, n1);
            TextOut(100, 1, 'X');
            TextOut(150, 1, n2);
            readln(otv);
            if otv = 0 then
                Window.Close
            else if otv = 999 then begin
                if prop > 0 then begin
                    prop := prop - 1;
                end else begin
                    SetFontColor(clRed);
                    SetFontSize(20);
                    TextOut(40, 50, 'Не осталось пропусков!');
                    readln();
                    qwerty := true;
                end;
            end else if otv = n1 * n2 then begin
                numberans := numberans + 1;
            end else if (otv <> n1 * n2) and (osh = 0) then begin
                fon := picture.Create('textures/fons/Game Over.jpg');
                foncre;
                SetFontColor(clRed);
                SetFontSize(20);
                TextOut(20, 50, 'Неправильно! Правильный ответ - ');
                TextOut(520, 50, n1 * n2);
                SetFontColor(clGreen);
                TextOut(20, 100, 'Вы правильно решили');
                TextOut(330, 100, numberans);
                TextOut(350, 100, 'задач.');
                SetFontColor(clWhite);
                TextOut(20, 1, n1);
                TextOut(100, 1, 'X');
                TextOut(150, 1, n2);
                particle2.Draw(200, 200, 50, 50);
                particle2.Draw(250, 200, 50, 50);
                particle2.Draw(300, 200, 50, 50);
                if numberans = reck then TextOut(20, 150, 'Вы побили (или почти побили) рекорд!');
                while true do
                begin
                    
                end;
                if osh > 0 then begin
                    SetFontColor(clRed);
                    SetFontSize(20);
                    TextOut(40, 150, 'Неправильный ответ! Правильный ответ - ');
                    TextOut(540, 150, n1 * n2);
                    if osh = 2 then TextOut(40, 200, 'У вас осталось 2 жизни!');
                    if osh = 1 then TextOut(40, 200, 'У вас осталось 1 жизнь!');
                    osh := osh - 1;
                    readln();
                end;
            end;
        end;
    end;
    if reck < 301 then begin
        if (((dt.Day = 1) or (dt.Day = 2) or (dt.Day = 3) or (dt.Day = 4) or (dt.Day = 4) or (dt.Day = 5) or (dt.Day = 6)) and (dt.Month = 1)) or (((dt.Day = 26) or (dt.Day = 27) or (dt.Day = 28) or (dt.Day = 29) or (dt.Day = 30) or (dt.Day = 31)) and (dt.Month = 12)) then
            fon := picture.Create('textures\fons\Новый год.jpg')
        else if (dt.Month = 12) or (dt.Month = 1) or (dt.Month = 2) then
            fon := picture.Create('textures\fons\снежок.jpg')
        else if (dt.Month = 4) or (dt.Month = 5) or (dt.Month = 3) then
            fon := picture.Create('textures\fons\Для весны.jpg')
        else if (dt.Month = 7) or (dt.Month = 8) or (dt.Month = 6) then
            fon := picture.Create('textures\fons\Для лета.jpg')
        else if (dt.Month = 10) or (dt.Month = 11) or (dt.Month = 9) then 
            fon := picture.Create('textures\fons\Осенние листья.jpg');
        foncre;
        SetFontSize(15);
        SetFontColor(clWhite);
        TextOut(1, 5, 'Поздравляю, вы, на 3 уровне!');
        SetFontColor(clLightGray);
        TextOut(1, 30, 'Для продолжения нажмите ENTER!');
        readln();
        foncre;
        SetFontSize(11);
        SetFontStyle(fsBoldItalic);
        SetFontColor(clGold);
        TextOut(1, 30, 'Условия:');
        TextOut(1, 45, '1) Теперь вам будут даваться примеры с цифрами от 15 до 30.');
        TextOut(1, 60, '2) Вам добавлена 1 бонусная жизнь.');
        osh := osh + 2;
        SetFontColor(clBlack);
        TextOut(1, 5, 'У вас 3 уровень!');
        SetFontColor(clRed);
        TextOut(1, 105, 'Для начала игры нажмите ENTER!');
        SetFontColor(clWhite);
        readln();
        numberans := 200;
        if ((dt.Day = 1 or 2 or 3 or 4 or 5 or 6 or 7) and (dt.Month = 1)) or ((dt.Day = 26 or 27 or 28 or 29 or 30 or 31) and (dt.Month = 12)) then begin
            fon := picture.Create('textures\Новый год.jpg');
        end else begin
            fon := picture.Create('textures\fons\Фон игры.jpg');
        end;
        while true do
        begin
            foncre;
            SetFontColor(clWhite);
            if qwerty = false then n1 := random(15, 30);
            if qwerty = false then n2 := random(15, 30);
            qwerty := false;
            SetFontSize(20);
            SetFontColor(clRed);
            if reck < numberans then begin
                reck := numberans;
                assign(text, 'saves/reck.txt');
                rewrite(text);
                writeln(text, numberans);
                close(text);
            end;
            TextOut(300, 10, 'Вы решили:');
            TextOut(600, 10, numberans);
            TextOut(300, 35, 'Ваш рекорд:');
            TextOut(600, 35, reck);
            TextOut(300, 70, 'Осталось пропусков:');
            TextOut(600, 70, prop);
            if osh = 2 then begin
                particle1.Draw(300, 95, 20, 20);
                particle1.Draw(320, 95, 20, 20);
                particle1.Draw(340, 95, 20, 20);
            end else if osh = 1 then begin
                particle1.Draw(300, 95, 20, 20);
                particle1.Draw(320, 95, 20, 20);
                particle2.Draw(340, 92, 20, 23);
            end else if osh = 0 then begin
                particle1.Draw(300, 95, 20, 20);
                particle2.Draw(320, 92, 20, 23);
                particle2.Draw(340, 92, 20, 23);
            end else if osh = 3 then begin
                particle1.Draw(300, 95, 20, 20);
                particle1.Draw(320, 95, 20, 20);
                particle1.Draw(340, 95, 20, 20);
                particle3.Draw(360 - 5, 95, 30, 30);
            end else if osh = 4 then begin
                particle1.Draw(300, 95, 20, 20);
                particle1.Draw(320, 95, 20, 20);
                particle1.Draw(340, 95, 20, 20);
                particle3.Draw(360 - 5, 95, 30, 30);
                particle3.Draw(380 - 5, 95, 30, 30);
            end;
            SetFontColor(clWhite);
            SetFontSize(40);
            TextOut(20, 1, n1);
            TextOut(100, 1, 'X');
            TextOut(150, 1, n2);
            readln(otv);
            if numberans = 100 then break;            
            if otv = 0 then
                Window.Close
            else if otv = 999 then begin
                if prop > 0 then begin
                    prop := prop - 1;
                end else begin
                    SetFontColor(clRed);
                    SetFontSize(20);
                    TextOut(40, 50, 'Не осталось пропусков!');
                    readln();
                    qwerty := true;
                end;
            end else if otv = n1 * n2 then begin
                numberans := numberans + 1;
            end else if (otv <> n1 * n2) and (osh = 0) then begin
                fon := picture.Create('textures/fons/Game Over.jpg');
                foncre;
                SetFontColor(clRed);
                SetFontSize(20);
                TextOut(20, 50, 'Неправильно! Правильный ответ - ');
                TextOut(520, 50, n1 * n2);
                SetFontColor(clGreen);
                TextOut(20, 100, 'Вы правильно решили');
                TextOut(330, 100, numberans);
                TextOut(350, 100, 'задач.');
                SetFontColor(clWhite);
                TextOut(20, 1, n1);
                TextOut(100, 1, 'X');
                TextOut(150, 1, n2);
                particle2.Draw(200, 200, 50, 50);
                particle2.Draw(250, 200, 50, 50);
                particle2.Draw(300, 200, 50, 50);
                if numberans = reck then TextOut(20, 150, 'Вы побили (или почти побили) рекорд!');
                while true do
                begin
                    
                end
            end else begin
                if osh > 0 then begin
                    SetFontColor(clRed);
                    SetFontSize(20);
                    TextOut(40, 150, 'Неправильный ответ! Правильный ответ - ');
                    TextOut(540, 150, n1 * n2);
                    if osh = 2 then TextOut(40, 200, 'У вас осталось 2 жизни!');
                    if osh = 1 then TextOut(60, 200, 'У вас осталось 1 жизнь!');
                    osh := osh - 1;
                    readln();
                end;
            end;
        end;
    end;
    if (((dt.Day = 1) or (dt.Day = 2) or (dt.Day = 3) or (dt.Day = 4) or (dt.Day = 4) or (dt.Day = 5) or (dt.Day = 6)) and (dt.Month = 1)) or (((dt.Day = 26) or (dt.Day = 27) or (dt.Day = 28) or (dt.Day = 29) or (dt.Day = 30) or (dt.Day = 31)) and (dt.Month = 12)) then
        fon := picture.Create('textures\fons\Новый год.jpg')
    else if (dt.Month = 12) or (dt.Month = 1) or (dt.Month = 2) then
        fon := picture.Create('textures\fons\снежок.jpg')
    else if (dt.Month = 4) or (dt.Month = 5) or (dt.Month = 3) then
        fon := picture.Create('textures\fons\Для весны.jpg')
    else if (dt.Month = 7) or (dt.Month = 8) or (dt.Month = 6) then
        fon := picture.Create('textures\fons\Для лета.jpg')
    else if (dt.Month = 10) or (dt.Month = 11) or (dt.Month = 9) then 
        fon := picture.Create('textures\fons\Осенние листья.jpg');
    foncre;
    
    SetFontSize(15);
    println('Поздравляю!!! Вы прошли нашу игру!!! Для того чтобы получить приз, отправьте сообщение об этом на @agusev2311 в Telegram присылать код: YBQJ-4H3X-Q5Y5-G5R1  или перейдите по ссылке https://forms.gle/BG5hgjdr8Lk4dh37A. С каждым обновлением версия обнавляется, и прошлый код не работает!');
    readln;                                                                                                                                         {ББББ-ЦБЦБ-БЦБЦ-БЦБЦ}                                                                               
end.