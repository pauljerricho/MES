using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Constructor
{
    class MainApp
    {
        class Cat
        {
            public Cat()
            {
                Name = "";
                Color = "";
            }
            public Cat(string Name_, string Color_)
            {
                Name = Name_;
                Color = Color_;
            }

            ~Cat()
            {
                Console.WriteLine("잘가!");
            }

            public string Name;
            public string Color;

            public void Meow()
            {
                Console.WriteLine($"{Name} : 야옹");
            }
        }
        static void Main(string[] args)
        {
            Cat kitty = new Cat("키티","분홍색");
            kitty.Meow();
            Console.WriteLine($"{kitty.Name} : {kitty.Color}");

            Cat nero = new Cat("네로","검은색");
            nero.Meow();
            Console.WriteLine($"{nero.Name} : {nero.Color}");

        }
    }
}
