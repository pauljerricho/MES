using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using This;

namespace This
{
    class Employee
    {
        private string Name;
        private string Position;

        public void SetName(string name)
        {
            this.Name = name;
        }
        public string GetName()
        {
            return this.Name;
        }
        public void SetPosition(string Position)
        {
            this.Position = Position;
        }
        public string GetPosition()
        {
           return this.Position;
        }
    }
}
class MainApp
{
    static void Main(string[] args)
    {
        Employee pooh = new Employee();
        pooh.SetName("푸우");
        pooh.SetPosition("웨이터");
        Console.WriteLine($"{pooh.GetName()} : {pooh.GetPosition()}");

        Employee tigger = new Employee();
        tigger.SetName("티거");
        tigger.SetPosition("청소부");
        Console.WriteLine($"{tigger.GetName()} : {tigger.GetPosition()}");

    }
}
