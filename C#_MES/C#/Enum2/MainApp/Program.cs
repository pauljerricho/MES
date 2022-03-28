using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Enum2
{
    enum DialogResult
    {
        YES, NO, CANCEL, CONFIRM, OK
    }
    class MainApp
    {
        static void Main(string[] args)
        {
            DialogResult result = DialogResult.YES;

            Console.WriteLine(result == DialogResult.YES);
            Console.WriteLine(result == DialogResult.NO);
            Console.WriteLine(result == DialogResult.CONFIRM);
            Console.WriteLine(result == DialogResult.OK);
            Console.WriteLine(result == DialogResult.CANCEL);

        }
    }
}
