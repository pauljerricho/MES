using ReadonlyMethod;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace W1
{
    class A
    {

    }
    class B : A
    {

    }
    class C
    {
        static void Main(string[] args)
        {
            A a = new A();
            B b = new B();
            A c = new B();
            //B d = new A(); //Error
            ACSetting acs;
            acs.currentInCelsius = 25;
            acs.target = 25;

            Console.WriteLine($"{acs.GetFahrenheit()}");
            Console.WriteLine($"{acs.target}");
            
            var alice = (job: "학생", age: 25);
            Console.WriteLine($"alice : {GetDiscountRate(alice)}");
        }

        private static object GetDiscountRate((string job, int age) alice)
        {
            switch (alice)
            {
                case ("학생", int n) when n < 18:
                    return 0.2;
                case ("학생", _):
                    return 0.1;
                case ("일반", int n) when n < 18:
                    return 0.1;
                case ("일반", _):
                    return 0.05;
                default:
                    return 0;
            }
        }
    }
}

namespace ReadonlyMethod
{
    struct ACSetting
    {
        public double currentInCelsius; // 현재 온도('C)
        public double target; // 희망 온도

        public readonly double GetFahrenheit()
        {
            //target = currentInCelsius * 1.8 + 32; // reason : readonly
            return target;
            
        }
    }
}


