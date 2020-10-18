using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Case1
{
    class Program
    {
       
        static void Main(string[] args)
        {
            int N = Int32.Parse(Console.ReadLine());
            int M = Int32.Parse(Console.ReadLine());
            int X = Int32.Parse(Console.ReadLine());
            int Y = Int32.Parse(Console.ReadLine());

            if ((N <= 0) | (M <= 0) | (X < 0) | (Y < 0))
            {
                Console.WriteLine("Ошибка! Число не может быть отрицательным!");
            }
            else
            {
                int dl = 0;
                int sh = 0;
                int min = 0;
                if (N > M) { dl = N; sh = M; } else { dl = M; sh = N; }
                int X2 = dl - X;
                int Y2 = sh - Y;
                if ((X > X2) & (X2 >= 0)) { min = X2; } else { min = X; }
                if (Y < min) { min = Y; }
                if ((Y2 < min) & (Y2 >= 0)) { min = Y2; }
                Console.WriteLine(min);
            }
            Console.ReadKey();

        }
    }
}
