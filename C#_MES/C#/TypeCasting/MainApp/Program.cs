using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TypeCasting
{
    class Mammel
    {
        public void Nurse()
        {
            Console.WriteLine("Nurse()");
        }
    }

    class Dog : Mammel
    {
        public void Bark()
        {
            Console.WriteLine("Bark()");
        }
    }
    class Cat : Mammel
    {
        public void Meow()
        {
            Console.WriteLine("Meow()");
        }
    }
    class MainApp
    {
        static void Main(string[] args)
        {
            Mammel memmel = new Dog();
            Dog dog;
            if(memmel is Dog)
            {
                dog = (Dog)memmel;
                dog.Bark();
            }

            Mammel mammel2 = new Cat();
            Cat cat = mammel2 as Cat;
            if(cat != null)
            {
                cat.Meow();
            }

            Cat cat2 = mammel2 as Cat;
            if(cat2 != null)
                cat2.Meow();
            else
                Console.WriteLine("cat2 is not a Cat");
        }
    }
}
