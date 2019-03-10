/*
 * Forfatter: Simen Fuglestad
 */
using System;

public class O2 {
	public static void Main(string[] args) {
		double resistance = 0;
		bool done = false;
		double last_node = 0; 
		while(!done) {
			Console.Write("Skriv inn neste motstandsverd : ");
			double r = Convert.ToDouble(Console.ReadLine());
			if (r < 0) {
				done = true;
				resistance = last_node + resistance;	
			}
			else if (r == 0) {
				Console.WriteLine("Siste node sin moststand : " + last_node);
				resistance = last_node + resistance;
				Console.WriteLine("Samlet motstand hitill : " + resistance);
				last_node = 0;
			}
			else if (last_node == 0) last_node = r;
			else last_node = (last_node*r)/(last_node + r);

		}
		Console.WriteLine("Total motstand : " + resistance);
		Console.ReadKey();
	}
}
