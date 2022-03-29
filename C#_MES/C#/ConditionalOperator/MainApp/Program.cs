using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConditionalOperator
{
    class MainApp
    {
        static void Main(string[] args)
        {
            string result = (10 % 2) == 0 ? "짝수" : "홀수";

            Console.WriteLine(result);
        }
    }
}
