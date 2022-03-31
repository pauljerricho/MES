using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Chapter6_Workout
{
    class MainApp
    {
        public static double Square(double arg)
        {
            return arg*arg;
        }

        public static void Mean(double a, double b, double c, double d, double e, ref double mean)
        {
            mean = (a + b + c + d + e) / 5;    
        }

        public static void Plus(int a, int b, out int c)
        {
            c = a + b;
        }

        public static void Plus(double a, double b, out double c)
        {
            c = a + b;
        }
        static void Main(string[] args)
        {
            Console.WriteLine("1번 문제 >>>");
            Console.WriteLine("수를 입력하세요 : ");
            string input = Console.ReadLine();
            double arg = Convert.ToDouble(input);
            Console.WriteLine($"결과 : {Square(arg)}");

            Console.WriteLine("2번 문제 >>>");
            double mean = 0;
            Mean(1, 2, 3, 4, 5, ref mean);
            Console.WriteLine("평균 : {0}", mean);
            Console.WriteLine("Reason : Call by Reference");

            Console.WriteLine("3번 문제 >>>");

            int a = 3;
            int b = 4;
            int resultA = 0;

            Plus(a, b, out resultA);

            Console.WriteLine($"{a} + {b} = {resultA}");

            double x = 2.4;
            double y = 3.1;
            double resultB = 0;

            Plus(x, y, out resultB); //오버로드가 필요한 메서드입니다.
            Console.WriteLine($"{x} + {y} = {resultB}");
        }
    }
}
