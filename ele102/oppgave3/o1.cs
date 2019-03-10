/*
 * Forfatter: Simen Fuglestad
 */
using System;

public class O1 {
	public static void Main(string[] args) {
		Console.WriteLine("Welcome! Enter some word you want to split: ");
		string input = Console.ReadLine();
		string result = "";
		for (int i=0; i < input.Length; i++) {
			if (input[i] == ' ') {
				result = result + ", ";
			}
			else {
				result = result + input[i];
			}
		}
		Console.WriteLine(result);
		Console.ReadKey();
	}
}
