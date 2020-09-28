#считываем данные с файлов (Case-5-List-1.txt - данные о массиве 1, Case-5-List-2.txt - данные о массиве 2)
with open('Case-5-List-1.txt', 'rb') as f:
    n1 = int(f.readline().decode('utf-8'))
    line1 = f.read().decode('utf-8').split()
f.close()
with open('Case-5-List-2.txt', 'rb') as t:
    n2 = int(t.readline().decode('utf-8'))
    line2 = t.read().decode('utf-8').split()
t.close()
b = []
line1 = list(set(line1))#убираем повторяющиеся эл-ты массива 1
line2 = list(set(line2))#убираем повторяющиеся эл-ты массива 2
i = 0
n1 = len(line1) #новая длина массива 1
n2 = len(line2) #новая длина массива 2

for i in range(n1):
    k = line2.count(line1[i]) #проверка - встречается ли элемент массива 1 в массиве 2
    if k > 0 :
        b.append(line1[i])
        line2.remove(line1[i])
        n2 = n2 - 1

if len(line2) > 0:
    for i in range(n2):
        k = line1.count(line2[i]) #проверка - встречается ли элемент массива 2 в массиве 1
        if k > 0:
            b.append(line2[i])

for i in range(len(b)): #сортировка повторяющихся элементов по ворастанию
    for j in range(len(b)-i-1):
        if b[j] > b[j+1]:
            b[j], b[j+1] = b[j+1], b[j]
print("Числа, входящие как в 1, так и во 2 список:")
for i in range(len(b)):
    print(b[i]," ",sep = '', end = '')
input('Press ENTER to exit')