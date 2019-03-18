using System;
using System.IO;

public class O4 {

    public static void Main(string[] args) {
        StreamReader rs = new StreamReader("kMelding.txt");
        string m = rs.ReadLine();
        Console.WriteLine(decrypt(m, 'R'));
        Console.ReadKey();
    }
    private static string decrypt(string message, char key) {
        string result = "";
        for (int i = 0; i < message.Length; i++) {
            if (message[i] == key) {
                result = result + message[i+1];
                key = message[i+2];
                i+=2;
            }
        }
        return result;
    }
}
