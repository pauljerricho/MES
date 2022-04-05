using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DefaultImplementation
{
    interface Ilogger
    {
        void WriteLog(string message);

        void WriteError(string error) // 새로운 메서드 추가
        {
            WriteLog($"Error : {error}");
        }
    }

    class ConsoleLogger : Ilogger
    {
        public void WriteLog(string message)
        {
            Console.WriteLine($"{DateTime.Now.ToLocalTime()},{message}");
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            Ilogger ilogger = new ConsoleLogger();
            ilogger.WriteLog("System Up");
            ilogger.WriteError("System Fail");

            ConsoleLogger logger = new ConsoleLogger();
            logger.WriteLog("System Up"); //OK
            logger.WriteError("System Fail"); //컴파일 에러
        }
    }
}
