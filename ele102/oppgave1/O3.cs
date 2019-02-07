using System;
public class Oppgave3 {
	public static void Main(string[] args) {
		try {
			Console.WriteLine("Welcome! Enter the x1 coordinate: ");
			int x1 = Int32.Parse(Console.ReadLine());
			Console.WriteLine("Nice! And now the y1 coordinate: ");
			int y1 = Int32.Parse(Console.ReadLine());
			String coord1 = "(" + x1 + "," + y1 + ")";
			Console.WriteLine("The first coordinate is " + coord1);
			Console.WriteLine("Now enter the x2 coordinate: ");
			int x2 = Int32.Parse(Console.ReadLine());
			Console.WriteLine("And finally the y2 coordinate: ");
			int y2 = Int32.Parse(Console.ReadLine());
			String coord2 = "(" + x2 + "," + y2 + ")";
			Console.WriteLine("The second coordinate is " + coord2); 
			double distance = computeDistance(x1, y1, x2, y2);
			Console.WriteLine("The distance between " + coord1 + " and " + coord2 + " is " + distance);
		} catch (Exception e) {
			Console.WriteLine("An error occurred: " + e.Message + " Please try again.");
		}
	}
	private static double computeDistance(int x1,int  y1, int x2, int y2) {
		return Math.Sqrt(Math.Pow(x1-x2, 2) + Math.Pow(y1-y2, 2));
	}
}
