using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Constant
{
    class MainApp
    {
        static void Main(string[] args)
        {
            const int MAX_INT = 2147483647;
            const int MIN_INT = -2147483647;

            Console.WriteLine(MAX_INT);
            Console.WriteLine(MIN_INT);

            // 상수를 바꿀려면?
            // MAX_INT = MAX_INT - 1;
        }
    }
}
