using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FloatToIntegral
{
    class MainApp
    {
        static void Main(string[] args)
        {
            float a = 0.9f; //float 형식 a
            int b = (int)a; //int로 변환
            Console.WriteLine(b);

            float c = 1.1f; //float 형식 c
            int d = (int)c; //int로 변환
            Console.WriteLine(d);
        }
    }
}
