using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MainApp
{
    class Object //Object는 자바에서는 최상위 클래스
    {
        static void Main(string[] args)
        {
            object a = 123;
            object b = 3.1415926535897932384626243383279m;
            object c = true;
            object d = "안녕하세요.";

            Console.WriteLine(a);
            Console.WriteLine(b);
            Console.WriteLine(c);
            Console.WriteLine(d);
        }
    }
}
