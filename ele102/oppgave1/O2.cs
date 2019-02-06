using System;

public class Oppgave2 {

	public static void Main(string[] args) {
		Console.WriteLine("Welcome! Please enter a decimal to convert from farenheit to celsius: ");
		double inp = Double.Parse(Console.ReadLine());
		Console.WriteLine("Fahrenheit\tCelsius");
		Console.WriteLine("------------------------");
		for (int i = -2; i < 5; i++) {
			Console.WriteLine((inp+i).ToString("0.000") + "\t\t" +
					fahrenheitToCelsius(inp + i).ToString("0.000"));
		}
		
	}

	private static double fahrenheitToCelsius(double val) {
		return (val - 32) * 5 / 9;
	}
}


