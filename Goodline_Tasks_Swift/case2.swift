import Foundation
if CommandLine.arguments.count == 3 {

    guard let speed: Int = Int(CommandLine.arguments[1]), 
    let time: Int = Int(CommandLine.arguments[2])
    else {print("Ошибка ввода!"); exit(0)}

    Calculation(speed:speed, time:time)    
} 
else
{
    if CommandLine.arguments.count > 1 
        {
            print("Ошибка ввода! Количество аргументов должно быть равно 2")
            exit(0)
        }

    let speedst = readLine() //String/nil
    let timest = readLine() //String/nil
    if speedst == nil || timest == nil 
    {
        print("Ошибка ввода!") 
        exit(0)
    }
    guard let speed: Int = Int(speedst!), let time: Int = Int(timest!) 
    else {print("Ошибка ввода!"); exit(0)}

    Calculation(speed:speed, time:time)
}


func Calculation(speed:Int, time:Int)
{
    var result = 0
    let spacing = abs(speed)*time
    if spacing >= 109 
    {
    let del = Int(spacing/109)
    let count = del * 109
    result = spacing - count
    } else {
    result = spacing
    }

    if speed < 0 {result = 109 - result}

    print(result)
}