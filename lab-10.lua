io.write('Vvedite tri razlichnih chisla i chislo d: ') -- na otsenku 3
a = io.read('*n')
b = io.read('*n')
c = io.read('*n')
d = io.read('*n')
a = tonumber(a)
b = tonumber(b)
c = tonumber(c)
d = tonumber(d)

if a == d then
        print('a = d')
elseif b == d then
        print('b = d')
elseif c == d then
        print('c = d')
elseif (d - a > d - b and d - a > d - c) then
        print('Maximalnoe d-a = '..d - a)
elseif (d - b > d - a and d - b > d - c) then
        print('Maximalnoe d-b = '..d - b)
elseif (d - c > d - a and d - c > d - b) then
        print('Maximalnoe d-c = '..d - c)
end

io.write('Vvedite stoimost knig i summu deneg, vnesennuyu pokupatelem: ') -- na otsenku 4
sum = io.read('*n')
den = io.read('*n')
sum = tonumber(sum)
den = tonumber(den)

if sum == den then
        print('Sdacha ne trebuetsya')
elseif den > sum then
        print('Vozmite sdachu: '..den - sum)
elseif den < sum then
        print('Nedostatochno deneg: '..sum - den)
end

io.write('Vvedite kolichestvo minut: ') -- na otsenku 5
kol = io.read('*n')
kol = tonumber(kol)

if kol < 50 then
        sum = kol
elseif kol < 80 then
        sum = 50 + (kol - 50) * 0.8
        rub = math.floor(sum)
        kop = sum - rub
elseif kol < 100 then
        sum = 74 + (kol - 80) * 0.5
        rub = math.floor(sum)
        kop = sum - rub
else
        sum = 84 + (kol - 100) * 0.3
        rub = math.floor(sum)
        kop = sum - rub
end

print('Summa za razgovor: '..rub..' rub., '..math.floor(string.format("%.1f", kop * 100))..' kop.')
