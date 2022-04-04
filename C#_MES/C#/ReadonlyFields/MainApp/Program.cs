using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReadOnlyFields
{
    class Configuration
    {
        private readonly int min;
        private readonly int max;
        
        public Configuration(int v1, int v2)
        {
            min = v1;
            max = v2;
        }
        public void ChangeMax(int newMax)
        {
            max = newMax;
        }
    }
    class MainApp { 
        static void Main(string[] args)
        {
            Configuration c = new Configuration(100, 10);
        }
    }
}
