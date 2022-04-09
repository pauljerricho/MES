using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace System.Runtime.CompilerServices
{
    internal static class IsExternalInit { }
}

namespace Record
{
    record RTransaction
    {
        public string From { get; init; }
        public string To { get; init; }
        public int Amount { get; init; }
        public override string ToString()
        {
            return $"{From,-10}->{To,-10} : ${Amount}";
        }

    }
    class MainApp
    {
        static void Main(string[] args)
        {
            RTransaction rt1 = new RTransaction
            {
                From = "Alice",
                To = "Bob",
                Amount = 50
            };
            RTransaction rt2 = new RTransaction
            {
                From = "Alice",
                To = "Charlie",
                Amount = 50
            };
            Console.WriteLine(rt1);
            Console.WriteLine(rt2);
        }
    }
}
