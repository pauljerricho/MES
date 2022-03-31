﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LocalFunction
{
    class MainApp
    {
        static string ToLowerString(string input)
        {
            var arr = input.ToCharArray();
            for (int i = 0; i < arr.Length; i++)
            {
                arr[i] = ToLowerChar(i);
            }
            char ToLowerChar(int i)
            {
                if (arr[i] < 65 || arr[i] > 90) //A ~ Z ASCII 값 : 65 ~ 90
                    return arr[i];
                else //a ~ z ASCII 값 : 97 ~ 122
                    return (char)(arr[i] + 32);
            }
            return new string(arr);
        }
        static void Main(string[] args)
        {
            Console.WriteLine(ToLowerString("Hello!"));
            Console.WriteLine(ToLowerString("Good Moring!"));
            Console.WriteLine(ToLowerString("This is C#."));
        }
    }
}
