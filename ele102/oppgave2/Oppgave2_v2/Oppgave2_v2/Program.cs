using System;

namespace Oppgave2_v2
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {

                Console.OutputEncoding = System.Text.Encoding.UTF8;
                double a = Convert.ToDouble(Console.ReadLine());
                double b = Convert.ToDouble(Console.ReadLine());
                double c = Convert.ToDouble(Console.ReadLine());
                double squareMe = Math.Pow(b, 2) - (4 * a * c);

                if (a == 0 && b == 0 && c == 0)
                {
                    Console.WriteLine("Det er evig mange løsninger");
                }
                else if (a == 0 && b != 0 && c == 0)
                {
                    Console.WriteLine("En løsning: x = 0");
                }
                else if (a == 0 && b == 0 && c != 0)
                {
                    Console.WriteLine("Det er ingen løsninger");
                }
                else if (a == 0 && b != 0 && c != 0)
                {
                    Console.WriteLine("Løsning er linær: x1 = x2 =" + (-b / c));
                }
                else if (squareMe < 0)
                {
                    double x = Math.Sqrt(Math.Abs(squareMe)) / (2 * a);
                    string bStr = (-b / (2 * a)).ToString("0.000");
                    Console.WriteLine("To løsninger: x1 = " + bStr + " + " + x.ToString("0.000") + "i, x2 = " + bStr + " - " + x.ToString("0.000") + "i");
                }
                else
                {
                    double x1 = (-b + Math.Sqrt(squareMe)) / (2 * a);
                    double x2 = (-b - Math.Sqrt(squareMe)) / (2 * a);

                    if (x1 == x2)
                    {
                        Console.WriteLine("x1 = x2 = " + x1.ToString("0.000"));
                    }
                    else
                    {
                        Console.WriteLine("x1 = " + x1.ToString("0.000") + "\nx2 = " + x2.ToString("0.000"));
                    }
                }
                Console.ReadKey();
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
                Console.ReadKey();
            }
        }
    }
}