import Foundation
if CommandLine.arguments.count == 2 {

    let ip = CommandLine.arguments[1] 
    Calculation(stringIP:ip)   
} 
else
{
    if CommandLine.arguments.count > 1 
    {
        print("Ошибка ввода! Количество аргументов должно быть равно 1")
        exit(0)
    }
    
    let ip = readLine() //String/nil
    if ip == nil
    {
        print("Ошибка ввода!") 
        exit(0)
    }
    
    Calculation(stringIP:ip!)
}

func Calculation(stringIP: String)
{
    guard stringIP.first != "." && stringIP.last != "." else
    {print("NO"); exit(0)}

    let substring = stringIP.split(separator:".")
    guard substring.count == 4 else {print("NO"); exit(0)}

    for element in substring
    {
        guard let intElement: Int = Int(element) else 
        {print("NO"); exit(0)}

        guard intElement >= 0, intElement <= 255 else
        {print("NO"); exit(0)}
    }
    print("YES")
}