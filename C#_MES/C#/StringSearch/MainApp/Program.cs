using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StringSearch
{
    internal class MainApp
    {
        static void Main(string[] args)
        {
            string greeting = "Good Morning";

            Console.WriteLine(greeting);
            Console.WriteLine();

            // IndexOf()
            Console.WriteLine("IndexOf 'Good' : {0}", greeting.IndexOf("Good"));
            Console.WriteLine("IndexOf 'o' : {0}", greeting.IndexOf('o'));
            
            // LastIndexOf()
            Console.WriteLine("LastIndexOf 'Good' : {0}", greeting.LastIndexOf("Good"));
            Console.WriteLine("LastIndexOf 'Good' : {0}", greeting.LastIndexOf('o'));

            // StartsWith()
            Console.WriteLine("StartsWith 'Good' : {0}", greeting.StartsWith("Good"));
            Console.WriteLine("StartsWith 'Morning' : {0}", greeting.StartsWith("Morning"));

            //EndsWith()
            Console.WriteLine("EndsWith 'Good' : {0}", greeting.EndsWith("Good"));
            Console.WriteLine("EndsWith 'Morning' : {0}", greeting.EndsWith("Morning"));

            //Contains()
            Console.WriteLine("Contains 'Evening' : {0}", greeting.Contains("Evening"));
            Console.WriteLine("Contains 'Morning' : {0}", greeting.Contains("Morning"));

            //Replace()
            Console.WriteLine("Replaced 'Morning' with 'Evening': {0}",
            greeting.Replace("Morning", "Evening"));
        }
    }
}
