using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReactArea
{
    class MainApp
    {
        static void Main(string[] args)
        {
            Console.WriteLine("사각형의 가로를 입력하세요.");
            string width = Console.ReadLine();

            Console.WriteLine("사각형의 세로를 입력하세요.");
            string height = Console.ReadLine();
            
            Console.WriteLine("사각형의 넓이는?");
            int result = int.Parse(width) * int.Parse(height); //string을 int로 바꿔줘야한다.
            Console.WriteLine(result);
        }
    }
}
