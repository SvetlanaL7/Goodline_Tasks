using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Case2
{
    class Program
    {
        static void Main(string[] args)
        {
            int V = Int32.Parse(Console.ReadLine());
            int T = Int32.Parse(Console.ReadLine());

            int Res = 0;

            int S = Math.Abs(V)*T;
            if (S >= 109)
            {
                int del = (int)(S / 109);
                int k = del * 109;
                Res = S - k;
            }
            else
            {
                Res = S;
            }

            if (V < 0) { Res = 109 - Res; }

            Console.WriteLine(Res);
        
            Console.ReadKey();
        }
    }
}
