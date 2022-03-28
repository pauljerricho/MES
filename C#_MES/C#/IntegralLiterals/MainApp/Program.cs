﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IntegerLiterals
{
    class MainApp
    {
        static void Main(string[] args)
        {
            byte a = 240; //10진수 리터럴
            Console.WriteLine(a);

            byte b = 0b1111_0000; //2진수 리터럴
            Console.WriteLine($"b={b}");

            byte c = 0XF0; //16진수 리터럴
            Console.WriteLine($"c={c}");

            uint d = 0x1234_abcd; // 16진수 리터럴
            Console.WriteLine($"d={d}");
        }
    }
}
