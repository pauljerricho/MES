using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UsingOut
{
    class MainApp
    {
        static void Divide(int a,int b,out int quotient, out int remainder)
        {
              quotient= a/b;
              remainder = a % b;
        }
        static void Main(string[] args)
        {
            int a = 20;
            int b = 3;
            // int c;
            // int d;
            Divide(a, b, out int c, out int d);
            Console.WriteLine($"a:{a}, b:{b},  a/b:{c}, a%b:{d}");
        }
    }
}
