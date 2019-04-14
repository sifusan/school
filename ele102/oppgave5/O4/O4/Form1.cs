using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Windows.Forms;

namespace O4
{
    public partial class Form1 : Form
    {
        SerialPort serial_port;
        bool started = false;
        const int BAUD_RATE = 9600;
        bool exit_flag = false;
        Timer timer = new Timer();
        string[] last_ten_msgs = new string[10];
        int nr_msgs = 0;
        public Form1()
        {
            InitializeComponent();
            string[] port_names = SerialPort.GetPortNames();
            for (int i = 0; i <port_names.Length; i++)
            {
               port_select_box.Items.Add(port_names[i]);
            }
            timer.Tick += new EventHandler(read_data);
            timer.Interval = 1000;
            timer.Enabled = false;
        }

        private void start_btn_click(object sender, EventArgs e)
        {
            try
            {
                if (!started)
                {
                    started = true;
                    serial_port = new SerialPort(port_select_box.SelectedItem.ToString(), BAUD_RATE);

                    serial_port.Open();

                    if (serial_port.IsOpen)
                    {
                        timer.Start();
                    }
                }
            }
            catch (Exception exception)
            {
            }
        }

        private void stop_btn_click(object sender, EventArgs e)
        {
            timer.Stop();
            serial_port.Close();
            started = false;
        }
           

        private void read_data(object sender, EventArgs e)
        {
            String s = serial_port.ReadLine();
            last_rec_msg_box.Text = s;
            insert_row_msg(s);

        }

        private void insert_row_msg(String new_msg)
        {
            
            if (nr_msgs >= 10)
            {
                string[] copy = new string[10];
                copy[0] = new_msg;
                for (int i=0; i < last_ten_msgs.Length-1; i++)
                {
                    copy[i + 1] = last_ten_msgs[i];
                }
                last_ten_msgs = copy;
            } else
            {
                last_ten_msgs[nr_msgs] = new_msg;
            }
            String tmp = "";
            foreach(string s in last_ten_msgs)
            {
                tmp += s + "\r\n";
            }
            last_ten_rec_msg_box.Text = tmp;
            nr_msgs++;
        }

        private void exit_btn_click(object sender, EventArgs e)
        {
            if (serial_port.IsOpen) serial_port.Close();
            Application.Exit();
        }
        private void clear_txt_btn_click(object sender, EventArgs e)
        {
            nr_msgs = 0;
            last_ten_msgs = new string[10];
            last_rec_msg_box.Text = "";
            last_ten_rec_msg_box.Text = "";
        }

    }
}
