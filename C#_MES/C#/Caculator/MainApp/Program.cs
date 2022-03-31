using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Method
{
    class Calculator
    {
        public static int Plus(int a, int b)
        {
            return a + b;
        }

        public static int Minus(int a, int b)
        {
            return a - b;
        }
    }
    class MainApp
    {
        static void Main(string[] args)
        {
            int result = Calculator.Plus(1, 2);
            Console.WriteLine(result);
            result = Calculator.Minus(1, 2);
            Console.WriteLine(result);

        }
    }
}
