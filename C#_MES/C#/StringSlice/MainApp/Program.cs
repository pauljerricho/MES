using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StringSlice
{
    class MainApp
    {
        static void Main(string[] args)
        {
            string greeting = "Good Morning.";

            Console.WriteLine(greeting.Substring(0,5)); //"Good"
            Console.WriteLine(greeting.Substring(5)); //"morning"
            Console.WriteLine();

            string[] arr = greeting.Split(
                new string[]
                {" " }, StringSplitOptions.None);
            //arr이라는 문자배열에서 메모리에 Split 하기 전 상태로 저장
            Console.WriteLine("Word Count : {0}", arr.Length);
            
            foreach (string item in arr)
                Console.WriteLine("{0}",item);
        }
    }
}
