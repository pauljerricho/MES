using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Overriding
{
    
        class ArmorSuite
        {
            public virtual void initialize()
            {
                Console.WriteLine("Armored");
            }
        }

        class IronMan : ArmorSuite
        {
            public override void initialize()
            {
                base.initialize();
                Console.WriteLine("Repulsor Rays Armed");
            }
        }

        class WarMachine : ArmorSuite
        {
            public override void initialize()
            {
                base.initialize();
                Console.WriteLine("Double-Barrel Cannons Armed");
                Console.WriteLine("Micro Launcher Armed");
            }
        }
        class MainApp
        {
        static void Main(string[] args)
        {
            Console.WriteLine("Creating ArmorSuite...");
            ArmorSuite armorSuite = new ArmorSuite();
            armorSuite.initialize();

            Console.WriteLine("\nCreating IronMan...");
            ArmorSuite ironMan = new IronMan();
            ironMan.initialize();

            Console.WriteLine("\nCreating WarMachine...");
            ArmorSuite warMachine = new WarMachine();
            warMachine.initialize();
        }
    }
}
