import Foundation

    if CommandLine.arguments.count == 5 
    {
        guard let sizeN: Int = Int(CommandLine.arguments[1]), let sizeM: Int = Int(CommandLine.arguments[2]),
        let distanceX: Int = Int(CommandLine.arguments[3]), let distanceY: Int = Int(CommandLine.arguments[4]) 
        else {print("Ошибка ввода!"); exit(0)}
        
        Calculation(sizeN:sizeN, sizeM:sizeM, distanceX:distanceX, distanceY:distanceY)

    } 
    else 
    {
        if CommandLine.arguments.count > 1 
        {
            print("Ошибка ввода! Количество аргументов должно быть равно 4")
            exit(0)
        }

        let sizeNst = readLine() //String/nil
        let sizeMst = readLine() //String/nil
        let distanceXst = readLine() //String/nil
        let distanceYst = readLine() //String/nil

        if sizeNst == nil || sizeMst == nil || distanceXst == nil || distanceYst == nil {
            print("Ошибка ввода!") 
            exit(0)
        }
        guard let sizeN: Int = Int(sizeNst!), let sizeM: Int = Int(sizeMst!),
        let distanceX: Int = Int(distanceXst!), let distanceY: Int = Int(distanceYst!) 
        else {print("Ошибка ввода!"); exit(0)}
        
        Calculation(sizeN:sizeN, sizeM:sizeM, distanceX:distanceX, distanceY:distanceY)

    }   

    func Calculation(sizeN:Int, sizeM:Int, distanceX:Int, distanceY:Int)
    {
        if sizeN <= 0 || sizeM <= 0 || distanceX < 0 || distanceY < 0 
        {
                print("Ошибка! Число не может быть отрицательным!")
                exit(0)
        } 
        else
        {
                var Length = 0
                var Width = 0
                var min = 0
                if sizeN > sizeM 
                {
                    Length = sizeN
                    Width = sizeM 
                } 
                else 
                {
                    Length = sizeM
                    Width = sizeN
                }
                if Length < distanceY || Width < distanceX
                    {
                        print("Ошибка ввода!")
                        exit(0)
                    } 
                let distanceX2 = Length - distanceX
                let distanceY2 = Width - distanceY
                if distanceX > distanceX2 && distanceX2 >= 0 {min = distanceX2} else {min = distanceX}
                if distanceY < min {min = distanceY}
                if distanceY2 < min && distanceY2 >= 0 {min = distanceY2} 
                print(min)
        }

    }