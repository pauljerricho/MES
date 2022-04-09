using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Property
{
    class BirthdayInfo
    {
        private string name;
        private DateTime birthday;
        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        public DateTime Birthday
        {
        get { return birthday; }
        set { birthday = value; }
        }
         public int Age
        {
            get
            {
            return new DateTime(DateTime.Now.Subtract(birthday).Ticks).Year;
            }
         }
    }

    class MainApp
    {
        static void Main(string[] args)
        {
            BirthdayInfo birth = new BirthdayInfo();
            birth.Name = "성일";
            birth.Birthday = new DateTime(1993, 08, 09);
            Console.WriteLine(birth.Name);
            Console.WriteLine(birth.Birthday.ToShortDateString());
            Console.WriteLine(birth.Age);
        }
    }
}
