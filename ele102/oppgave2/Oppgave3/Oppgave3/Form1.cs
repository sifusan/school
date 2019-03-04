using System;
using System.Drawing;
using System.Windows.Forms;

namespace Oppgave3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            
            InitializeComponent();
            result_label.AutoSize = false;
            result_label.Location = new Point(textBox1.Location.X, this.Height - this.Height / 3);
            result_label.Size = new Size(this.Width - 2 * textBox1.Location.X, 15);

        }
        private void solveEquationOnClick(object sender, EventArgs e)
        {
            try
            {


                double a = Convert.ToDouble(textBox1.Text);
                double b = Convert.ToDouble(textBox2.Text);
                double c = Convert.ToDouble(textBox3.Text);
                double squareMe = Math.Pow(b, 2) - (4 * a * c);

                if (a == 0 && b == 0 && c == 0)
                {
                    result_label.Text = "Det er uendelig mange løsninger";
                }

                else if (a == 0 && b != 0 && c == 0)
                {
                    result_label.Text = "En løsning: x=0";
                }
                else if (a == 0 && b == 0 && c != 0)
                {
                    result_label.Text = "Det er ingen løsninger";
                }
                else if (a == 0 && b != 0 && c != 0)
                {
                    result_label.Text = "Løsning er linær: x1 = x2 =" + (-b / c);
                }
                else if (squareMe < 0)
                {
                    double x1 = Math.Sqrt(Math.Abs(squareMe)) / (2 * a);
                    double x2 = Math.Sqrt(Math.Abs(squareMe)) / (2 * a);
                    string b_str = (-b / (2 * a)).ToString("0.000");
                    result_label.Text = "To løsninger: x1 = " + b_str + " + " + x1.ToString("0.000") + "i" + " og x2 = " + b_str + " - " + x1.ToString("0.000") + "i";
                }
                else
                {
                    double x1 = (-b + Math.Sqrt(squareMe)) / (2 * a);
                    double x2 = (-b - Math.Sqrt(squareMe)) / (2 * a);

                    if (x1 == x2)
                    {
                        result_label.Text = "Kun en løsning: x1 = x2 = " + x1.ToString("0.000");
                    }
                    else
                    {
                        result_label.Text = "To løsninger: x1 = " + x1.ToString("0.000") + " x2 = " + x2.ToString("0.000");
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}