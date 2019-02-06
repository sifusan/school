using System;
public class Oppgave3 {
	public static void Main(string[] args) {
		try {
			Console.WriteLine("Welcome! Enter x coordinate: ");
			double x = Double.Parse(Console.ReadLine());
			Console.WriteLine("Nice! And now the y coordinate: ");
			double y = Double.Parse(Console.ReadLine());
			double distance = Math.Sqrt((Math.Pow(x, 2) + (Math.Pow(y,2))));
			Console.WriteLine("The distance between " + x + " and " + y + " is " + distance);
		} catch (Exception e) {
			Console.WriteLine("An error occurred: " + e.Message + " Please try again.");
		}
	}
}
