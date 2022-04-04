using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SealedMethod
{
    class Base
    {
        public virtual void SealMe ()
        {
        }
    }
    class Derived : Base
    {
        public sealed override void SealMe()
        {
        }
    }
}
    class MainApp
{
    static void Main(string[] args)
    {
    }
}
