using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using iTextSharp.text.pdf;
//바코드를 생성해봅시다
namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Barcode39 barcode39 = new Barcode39();
            barcode39.Code = "20201209/WED"; //바코드 날짜
            barcode39.BarHeight = 500;  //바코드 크기
            barcode39.CreateDrawingImage(Color.Black, Color.White).Save(@"D:\barcode2.png"); //바코드 저장 경로
        }
    }
}
