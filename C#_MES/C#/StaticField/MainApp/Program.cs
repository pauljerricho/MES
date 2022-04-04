using StaticField;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StaticField
{
    
        class Global
        {
            public static int count = 0;
        }
        class ClassA
        {
        public ClassA()
        {
            Global.count++;
        }
        }   
        class ClassB
        {
        public ClassB()
        {
            Global.count++;
        }
        }
        
}

        class MainApp {
            static void Main(string[] args)
            {
                Console.WriteLine($"Global.count : {Global.count}");
                new ClassA();
                new ClassA();
                new ClassB();
                new ClassB();
                Console.WriteLine($"Global.count : {Global.count}");
            }
}
