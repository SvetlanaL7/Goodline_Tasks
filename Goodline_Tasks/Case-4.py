print("Введите строку (IP-адрес).")
ip = input() #считываем IP-адрес
ip = ip.split('.') #разбивает строку на части, используя разделитель - '.'
if len(ip) == 4: #проверям, что строка разюбита на 4 части (если >/< => это уже не IP-адрес)
    if (ip[0].isdigit())and(ip[1].isdigit())and(ip[2].isdigit())and(ip[3].isdigit()): #проверка - число это/ есть посторонние символы
        #проверяем, что числа находятся в диапазоне от 0 до 255
        if (int(ip[0]) >= 0) and (int(ip[0]) <= 255) and (int(ip[1]) >=0 ) and (int(ip[1]) <= 255) and (int(ip[2]) >= 0) and (int(ip[2]) <= 255) and (int(ip[3]) >= 0) and (int(ip[3]) <= 255):
            print('YES')
        else:
             print('NO')
    else:
        print('NO')
else:
    print('NO')
input('Press ENTER to exit')