using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StringInterpolation
{
    class MainApp
    {
        static void Main(string[] args)
        {
            string name = "김튼튼";
            int age = 23;
            Console.WriteLine($"{name,-10}, {age:D3}");

            name = "박날씬";
            age = 30;
            Console.WriteLine($"{name},{age,-10:D3}");

            name = "이비실";
            age = 17;
            Console.WriteLine($"{name}, {(age > 20 ? "성인" : "미성년자")}");
        }
    }
}
