using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutoImplementedProperty
{
    class BirthdayInfo
    {
        public string Name { get; set; } = "Unknown";
        public DateTime Birthday { get; set; } = new DateTime(1, 1, 1);
        public int age
        {
            get
            {
                return new DateTime(DateTime.Now.Subtract(Birthday).Ticks).Year;
            }
        }
    }
    class MainApp
    {
        static void Main(string[] args)
        {
            BirthdayInfo birth = new BirthdayInfo();
            Console.WriteLine(birth.Name);
            Console.WriteLine(birth.Birthday.ToShortDateString());
            Console.WriteLine(birth.age);

            birth.Name = "성일";
            birth.Birthday = new DateTime(1993, 08, 09);

            Console.WriteLine(birth.Name);
            Console.WriteLine(birth.Birthday.ToShortDateString());
            Console.WriteLine(birth.age);

        }
    }
}
