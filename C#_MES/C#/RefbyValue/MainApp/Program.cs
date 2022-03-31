﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RefbyValue
{
    class MainApp
    {
        public static void Swap(ref int a, ref int b)
        {
            int temp = b;
            b = a;
            a = temp;
        }
        static void Main(string[] args)
        {
            int x = 3; 
            int y = 4;
            Console.WriteLine($"x:{x},y:{y}");
            Swap(ref x, ref y);
            Console.WriteLine($"x:{x},y:{y}");
            
            
        }
    }
}
