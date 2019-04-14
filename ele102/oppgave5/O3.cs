using System;

public class O3 {
    public static void Main(string[] args) {
        //Test eksempler fra oppgaven
        multiply_complex(1, 2, 3, -4);
        multiply_complex(20, -10, -2, -4);
        multiply_complex(3, -4, 1, 2);
        multiply_complex(-2, -4, 20, -10);
        Console.ReadKey();
    }

    private static void multiply_complex(double A_r, double A_j, double B_r, double B_j) {
        double real = A_r * B_r - A_j * B_j;
        double img = A_r * B_j + B_r * A_j;
        string sign = img >= 0 ? " + " : " - ";
        Console.WriteLine(real + sign + System.Math.Abs(img) + "j");
    }
}
