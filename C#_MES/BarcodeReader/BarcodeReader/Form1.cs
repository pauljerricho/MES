using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Net.Sockets;
using System.Threading;
namespace BarcodeReader
{
    public partial class Form1 : Form
    {
        TcpClient Client;
        //클라이언트 객체 생성
        //서버ip와 포트번호로 클라이언트를 생성하고
        //클라이언트에서 스트림을 가져와서 이 스트림을 통해서 데이터 교환
        NetworkStream stream;
        public Form1()
        {
            InitializeComponent();
            Client = new TcpClient();
            Client.Connect("localhost", 59901);
            stream = Client.GetStream();

            //검사를 하게 될 쓰레드를 만듬

            Thread thread = new Thread(GetMessage);
            thread.IsBackground = true;
            thread.Start();
        }

        ~Form1()
        {
            stream.Close();
            Client.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {

            //delegate : UI와 쓰레드의 빵 셔틀
        }

        private void GetMessage()
        {
            // 혼자 실행되는 함수
            while (true)
            {
                int size = Client.ReceiveBufferSize;
                byte[] buffer = new byte[size];
                int bytes = stream.Read(buffer, 0, buffer.Length);   
                string sendStr = Encoding.ASCII.GetString(buffer,0,bytes) + "\n";

                BeginInvoke(new WriteTextCallback(Writetext), new object[] { sendStr });
            }
        }
        private void Writetext(string str)
        {
            this.textBox1.AppendText(str);
        }

        delegate void WriteTextCallback(string str);
    }
}
