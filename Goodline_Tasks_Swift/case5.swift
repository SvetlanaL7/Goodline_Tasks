import Foundation

if CommandLine.arguments.count > 1 
{
    var arrayN: [Int] = []
    var arrayM: [Int] = []
   
    guard let countN: Int = Int(CommandLine.arguments[1]), countN > 0
    else {print("Ошибка ввода!"); exit(0)}
    
   for i in 2...countN+1
    {
        guard let intElement: Int = Int(CommandLine.arguments[i]) else 
        {print("Ошибка ввода!"); exit(0)}
        arrayN.append(intElement)
    }

    guard let countM: Int = Int(CommandLine.arguments[countN+2]), countM > 0
    else {print("Ошибка ввода!"); exit(0)}

    guard CommandLine.arguments.count == countM+countN+3 else
    {print("Ошибка ввода!");exit(0)}

    for i in countN+3...countM+countN+2
    {
        guard let intElement: Int = Int(CommandLine.arguments[i]) else 
            {print("Ошибка ввода!"); exit(0)}
            arrayM.append(intElement)
    }

    Calculation(countN:countN,arrayN:arrayN,countM:countM,arrayM:arrayM)
} 
else
{
    var arrayN: [Int] = []
    var arrayM: [Int] = []
   
    let countNst = readLine() //String/nil
    let arrayNst = readLine() //String/nil
    let countMst = readLine() //String/nil
    let arrayMst = readLine() //String/nil
    if countNst == nil || arrayMst == nil || countMst == nil || arrayNst == nil
    {
         print("Ошибка ввода!") 
         exit(0)
    }
    guard let countN: Int = Int(countNst!), countN > 0
    else {print("Ошибка ввода!"); exit(0)}
    
    guard let countM: Int = Int(countMst!), countM > 0  
    else {print("Ошибка ввода!"); exit(0)}  

    let substringN = arrayNst!.split(separator:" ")
    let substringM = arrayMst!.split(separator:" ")
    
    guard substringN.count == countN && substringM.count == countM  else {print("Ошибка ввода!"); exit(0)}   
    
    for element in substringN
    {
        guard let intElement: Int = Int(element) else 
        {print("Ошибка ввода!"); exit(0)}
        arrayN.append(intElement)
    }

    for element in substringM
    {
        guard let intElement: Int = Int(element) else 
        {print("Ошибка ввода!"); exit(0)}
        arrayM.append(intElement)
    }
   
    Calculation(countN:countN,arrayN:arrayN,countM:countM,arrayM:arrayM)
}

func Calculation(countN:Int, arrayN: [Int], countM:Int, arrayM: [Int])
{
    var result: [Int] = []
    let arrayuniqueN = Array(Set(arrayN))//удаляет повторяющиеся элементы в массиве
    let arrayuniqueM = Array(Set(arrayM))//удаляет повторяющиеся элементы в массиве
   for i in 0...arrayuniqueN.count-1
   {
       let indexOfarr = arrayuniqueM.firstIndex(of: arrayuniqueN[i])
       if indexOfarr != nil
       {
           result.append(arrayuniqueN[i])
       }
   }

    result = result.sorted(by: <)
    guard result.count > 0 else {print("Повторяющихся чисел нет");exit(0)}
    
    for i in 0...result.count-1
    {  
        print(String(result[i]),terminator: " ")
    }
    print()
}