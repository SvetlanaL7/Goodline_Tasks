  import Foundation

if CommandLine.arguments.count > 1 
{
    var array: [Int] = []
   
    guard let count: Int = Int(CommandLine.arguments[1])
    else {print("Ошибка ввода!"); exit(0)}
    
    guard CommandLine.arguments.count-2 == count
    else {print("Ошибка ввода!"); exit(0)}

    for i in 2...count+1
    {
        guard let intElement: Int = Int(CommandLine.arguments[i]) else 
            {print("Ошибка ввода!"); exit(0)}
            array.append(intElement)
    }
    Calculation(count:count,array:array)
} 
else
{
    var array: [Int] = []
    let countst = readLine() //String/nil
    let arrayst = readLine() //String/nil
    if countst == nil || arrayst == nil 
    {
         print("Ошибка ввода!") 
         exit(0)
     }
    guard let count: Int = Int(countst!)  
    else {print("Ошибка ввода!"); exit(0)}
        
    let substring = arrayst!.split(separator:" ")
    
    guard substring.count == count else {print("Ошибка ввода!"); exit(0)}   
    
    for element in substring
    {
        guard let intElement: Int = Int(element) else 
        {print("Ошибка ввода!"); exit(0)}
        array.append(intElement)
    }
   
    Calculation(count:count,array:array)
}

func Calculation(count:Int, array: [Int])
{
    var unique: [Int] = []//массив с уникальными значениями
    
    for i in 0...count-1
    {
        if array.firstIndex(of:array[i]) == array.lastIndex(of:array[i])
        {
            unique.append(array[i])
        }
    }

    for i in 0...unique.count-1
    {  
        print(String(unique[i]),terminator: " ")
    }
    print()
}