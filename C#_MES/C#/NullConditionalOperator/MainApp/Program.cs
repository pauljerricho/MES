using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NullConditionalOperator
{
    class MainApp
    {
        static void Main(string[] args)
        {
            ArrayList a = null;
            a?.Add("야구"); //a?.가 null을 반환하므로 Add() 메소드는 호출되지 않음
            a?.Add("축구");
            Console.WriteLine($"Count : {a?.Count}");
            Console.WriteLine($"Count : {a?[0]}");
            Console.WriteLine($"Count : {a?[1]}");
            
            a = new ArrayList();
            a?.Add("야구"); //a?.가 null이 아닙니다.
            a?.Add("축구");
            Console.WriteLine($"Count : {a?.Count}");
            Console.WriteLine($"Count : {a?[0]}");
            Console.WriteLine($"Count : {a?[1]}");
        }
    }
}
