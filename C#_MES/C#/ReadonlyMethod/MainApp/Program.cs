using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadonlyMethod
{
    struct ACSetting
    {
        public double currentInCelsius; //현재 온도('C)
        public double target; //희망 온도
        public readonly double GetFahrenheit()
        {
            //화씨('F) 계산 결과를 target에 저장
            target = currentInCelsius * 1.8 + 32;
            return target; //target 반환
        }
    }
    class MainApp
    {
        static void Main(string[] args)
        {
            ACSetting acs;
            acs.currentInCelsius = 25;
            acs.target = 30;

            Console.WriteLine(acs.GetFahrenheit());
            Console.WriteLine(acs.target);

        }
    }
}
