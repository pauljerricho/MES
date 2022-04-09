using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AnonymousType
{
    class MainApp
    {
        static void Main(string[] args)
        {
            var a = new { Name = "천성일", Age = 29 };
            Console.WriteLine($"Name : {a.Name}, Age : {a.Age}");

            var b = new { Subject = "수학", Scores = new int[] { 70, 60, 70, 80, 90 } };

            Console.WriteLine($"Subject : {b.Subject}");
            Console.WriteLine("Score is ");
            foreach(var x in b.Scores)
            {
                Console.WriteLine(x);
            }
            Console.WriteLine();
        }
    }
}
