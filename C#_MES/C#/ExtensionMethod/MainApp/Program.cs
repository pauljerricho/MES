using MyExtension;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyExtension
{
    public static class IntegerExtension {
        public static int Square(this int myInt)
    {
        return myInt * myInt;
    }
        public static int Power(this int myInt, int exponent)
    {
        int result = myInt;
        for(int i = 1; i < exponent; i++)
            result = result * myInt;
        return result;
        }
    }
}
    class MainApp
    {
        static void Main(string[] args)
        {
        Console.WriteLine($"3^2 : {3.Square()}");
        Console.WriteLine($"4^2 : {4.Power(2)}");
        Console.WriteLine($"2^10 : {2.Power(10)}");
        }
    }
