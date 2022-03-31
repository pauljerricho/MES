using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NamedParameter
{
    class MainApp
    {
        static void PrintProfile(string name, string phone)
        {
            Console.WriteLine($"Name : {name}, Phone : {phone}");
        }
        static void Main(string[] args)
        {
            PrintProfile(name: "박찬호", phone: "010-1234-1234");
            PrintProfile(phone: "010-1234-1255", name : "박세리");
            PrintProfile("박지성", "010-3847-3892");
            PrintProfile("손흥민", phone : "010-3343-3341");
        }
    }
}
