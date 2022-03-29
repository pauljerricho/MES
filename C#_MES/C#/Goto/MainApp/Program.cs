using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Goto
{
    class MainApp
    {
        static void Main(string[] args)
        {
            Console.WriteLine("종료 조건(숫자)을 입력하세요.");
            string input = Console.ReadLine();
            int input_number = Convert.ToInt32(input);

            int exit_number = 0;

            for(int i = 0; i < 2; i++)
            {
                for(int j = 0; j < 2; j++)
                {
                    for(int k = 0; k < 3; k++)
                    {
                        if (exit_number++ == input_number)
                            goto Exit_for;

                        Console.WriteLine(exit_number);
                    }
                }
            }

            goto Exit_program;

        Exit_for:
            Console.WriteLine("\nExit nested for...");
        Exit_program:
            Console.WriteLine("\nExit program");
        }
    }
}
