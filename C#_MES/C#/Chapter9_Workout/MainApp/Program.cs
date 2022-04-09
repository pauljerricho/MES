using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ex9
{
    class NameCard
    {
       public string Name
        {
            get;
            set;
        }
        public int Age
        {
            get;
            set;
        }

        
    }
    class MainApp
    {
        static void Main(string[] args)
        {
            NameCard MyCard = new NameCard() { Name = "성일", Age = 25 };
            Console.WriteLine($"나이 : {MyCard.Age}");
            Console.WriteLine($"성명 : {MyCard.Name}");
            Console.WriteLine("=======================");
            var nameCard = new {Name = "성일", Age = 25}; //무명 형식
            Console.WriteLine($"성명 : {nameCard.Name}, 나이 : {nameCard.Age} ");
            var complex = new { Real = 3, Imaginary = -12 };
            Console.WriteLine($"Real : {complex.Real}, Imaginary : {complex.Imaginary}");
        }
    }
}
