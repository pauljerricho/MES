using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MainApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("1번 문제");
            // 1.
            for (int j = 1; j < 6; j++)
            {
                for (int i = 0; i < j; i++)
                {
                    Console.Write("*");
                }
                Console.WriteLine(" ");
            }

            Console.WriteLine("2번 문제");

            //2.
            for (int j = 1; j < 6; j++)
            {
                for (int i = 6; i > j; i--)
                {
                    Console.Write("*");
                }
                Console.WriteLine(" "); //띄어주는 역할
            }

            //3.
            Console.WriteLine("3번 문제");
            Console.WriteLine("while문");
            int a = 0;
            while (a <= 4)
            {
                int b = 0;
                while (b <= a)
                {
                    Console.Write("*");
                    b++;
                }
                Console.WriteLine();
                a++;
            }
            Console.WriteLine("do-while문");
            int q = 0;
            do
            {
                int w = 0;
                do
                {
                    Console.Write("*");
                    w++;
                                    }
                while (w <= q);
                Console.WriteLine();
                q++;
            }
            while (q < 5);
        }

        }
    }
