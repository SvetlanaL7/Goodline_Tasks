print("Введите кол-во элементов в массиве, а затем сами элементы массива.")
n = int(input()) #кол-во эл-в в массиве
a = input().split() #считываем массив
b = [] #массив для уникальных элементов
i = 0
while i<n:
    k = a.count(a[i])
    if k == 1: #если элемент встречается в массиве 1 раз - берем в ответ
        b.append(a[i])
    i += 1
for i in range(len(b)):
    print(b[i]," ",sep = '', end = '')
input('Press ENTER to exit')