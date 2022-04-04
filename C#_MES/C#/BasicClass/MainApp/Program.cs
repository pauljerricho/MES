using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BasicClass
{
    class MainApp
    {
        class Cat
        {
            public string Name;
            public string Color;

            public void Meow()
            {
                Console.WriteLine($"{Color}인{Name} : 야옹");
            }
        }
        static void Main(string[] args)
        {
            Cat Kitty = new Cat();
            Kitty.Name = "Kitty";
            Kitty.Color = "BLUE";
            Kitty.Meow();

        }
    }
}
