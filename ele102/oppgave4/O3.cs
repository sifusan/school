using System;
using System.IO;

public class O3 {
    public static void Main(string[] args) {
        Console.Write("Enter a message you want to encrypt: ");
        string e = encrypt(Console.ReadLine().ToUpper(), 'R');    
        Console.WriteLine(e);
        StreamWriter sw = new StreamWriter("kMelding.txt");
        sw.WriteLine(e);
        sw.Close();
        Console.ReadKey();
    }

    private static string encrypt(string message, char key) {
        Random rand = new Random();
        string result = "";
        foreach(char c in message) {
            int nr_rand_chars = rand.Next(3, 11); 
            int i = 0;
            while (i < nr_rand_chars) {
                char rand_c = Convert.ToChar(rand.Next(65, 91)); 
                if (rand_c != key) {
                    result = result + rand_c;
                    i++;
                }
            }
            result = result + key;
            result = result + c;
            key = Convert.ToChar(rand.Next(65, 91));
            result = result + key;
        }
        return result;
    }
}
