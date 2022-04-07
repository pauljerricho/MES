using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO.Ports;
using System.Threading;

namespace RS232_EX1
{
    public partial class Form1 : Form
    {
        //시리얼 포트 변수 my_serial 생성
        SerialPort my_serial = new SerialPort();

        //RS232 제어코드//
        const char ETX = (char)0x03; //END TEXT [응답용 ASC]
        const char EOT = (char)0x04; //END OF TEXT [요구용 ASC]
        const char ENQ = (char)0x05; //ENQUIRE [프레임 시작코드]
        const char ACK = (char)0x06; //ACK [응답 시작]
        const char NAK = (char)0x15; //NOT ACK [응답  시작]

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            FormStart(true);
        }

        private void FormStart(bool t)
        {
            BT_Open.Enabled = t; //OPEN BT
            BT_Close.Enabled = !t; //CLOSE BT
            BT_Read.Enabled = !t; //READ BT
            BT_P20.Enabled = !t; //P20 BUTTON(LAMP)
            TB_Sendframe.Enabled = !t; //송신프레임 TEXT BOX
            TB_Receivedframe.Enabled = !t; //수신프레임 TEXT BOX
        }
        private void CB_Port_Click(object sender, EventArgs e)
        {
            CB_PORT.Items.Clear();
            foreach (string comport in SerialPort.GetPortNames())
            {
                CB_PORT.Items.Add(comport);
            }
        }

        private void BT_Open_Click(object sender, EventArgs e)
        {
            my_serial.PortName = CB_PORT.Text;
            my_serial.BaudRate = 19200;
            my_serial.DataBits = 8;
            my_serial.Parity = Parity.None;
            my_serial.StopBits = StopBits.None;

            if (!my_serial.IsOpen)
            {
                my_serial.Open();
                FormStart(false);
            }
        }

        private void BT_Close_Click(object sender, EventArgs e)
        {
            if (my_serial.IsOpen)
            {
                my_serial.Close();
                FormStart(true);
            }
        }

        private void BT_Read_Click(object sender, EventArgs e)
        {
            String SendDataText = ENQ + "OORRS" + "01" + "05%PX20" + EOT;
            TB_Sendframe.Text = SendDataText;

            SendData(SendDataText);
        }

        private void SendData(string sendDataText)
        {
            my_serial.Write(sendDataText);
            do
            { } while (my_serial.WriteBufferSize == 0);

            Thread.Sleep(10);
            DataRead();
        }

        private void DataRead()
        {
            bool m_Next = false;
            string strlnData = string.Empty;
            string RData = string.Empty;

            do
            {
                string msg = my_serial.ReadExisting();
                strlnData += msg;
                if (msg.IndexOf(ETX) > 0)
                {
                    TB_Receivedframe.Text = strlnData;

                    if (strlnData[0] == ACK)
                    {
                        RData += strlnData[11];
                        if (Convert.ToInt16(RData) == 1)
                            BT_P20.BackColor = Color.Green;
                        else BT_P20.BackColor = Color.Gray;

                        m_Next = true;
                    }
                    else if (strlnData[0] == NAK)
                        m_Next = true;
                }
            } while (!m_Next);
        }

        private void Form1_Load_1(object sender, EventArgs e)
        {

        }
    }
}
