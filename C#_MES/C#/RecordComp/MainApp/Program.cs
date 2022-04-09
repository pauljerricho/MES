using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace System.Runtime.CompilerServices
{
    internal static class IsExternalInit { }
}
namespace RecordComp
{

    class CTransaction
    {
        public string From { get; init; }
        public string To { get; init; }
        public int Amount { get; init; }
        public override string ToString()
        {
            return $"{From,-10} -> {To,-10} : ${Amount}";
        }

    }
        record RTransaction
        {
            public string From { get; init; }
            public string To { get; init; }
            public int Amount { get; init; }
            public override string ToString()
            {
                return $"{From,-10} -> {To,-10} : ${Amount}";
            }
        }
    class MainApp
    {
        public static void Main(string[] args)
        {
            CTransaction trA = new CTransaction { From = "Alice", To = "Charlie", Amount = 100 };
            CTransaction trB = new CTransaction { From = "Alice", To = "Charlie", Amount = 100 };

            Console.WriteLine(trA);
            Console.WriteLine(trB);
            Console.WriteLine($"trA equals to trB : {trA.Equals(trB)}");

            RTransaction tr1 = new RTransaction { From = "Alice", To = "Charlie", Amount = 100 };
            RTransaction tr2 = new RTransaction { From = "Alice", To = "Charlie", Amount = 100 };

            Console.WriteLine(trA);
            Console.WriteLine(trB);
            Console.WriteLine($"tr1 equals to tr2 : {tr1.Equals(tr2)}");

        }
    }
}
