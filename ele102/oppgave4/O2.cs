using System;
using System.IO;
class O1 {

    public static void Main(String[] args) {
        StreamReader sr = new StreamReader("Temperaturverdier.txt");
        string line; 
        double max = 0;
        double min = 0;
        double sum = 0;
        double i = 0;
        Console.WriteLine("Verdier\tMåletidspunkt");
        while((line = sr.ReadLine()) != null) {
            double c = Convert.ToDouble(parse_value(line));
            i++;
            if (c > max) max = c;
            if (c < min) min = c;
            sum = sum + c;
            Console.WriteLine(c + "\t" + parse_time(line));
        }
        Console.WriteLine("Min: " + min);
        Console.WriteLine("Max: " + max);
        Console.WriteLine("Avg: " + sum/i);
        Console.ReadKey();
    }


    private static string parse_value(string line) {
        return line.Substring(line.IndexOf(' ') + 1).Replace(',', '.');
    }

    private static string parse_time(string line) {
        return line.Substring(0, line.IndexOf(' '));
    }

    private static double convert_to_fahrenheit(double celsius) {
        return (celsius * (9.0/5.0)) + 32;
    }
    
    private static double convert_to_kelvin(double celsius) {
        return celsius + 273.15;
    }
}
