using System;

class Program {
    static void Main(string[] args) {
       double radius = 0;
       double hoyde = 0;
       double volum = 0;
       Introduksjon();
       LesSylinderDimensjoner(out radius, out hoyde);
       volum = SylinderVolum(radius, hoyde);
       Utskrift(radius, hoyde, volum);
       Console.ReadKey(true);
    }
    
    static void Introduksjon() {
        Console.Write("En sylinders volum er gitt ved formel 'V = PI * r^2 * h'\n");
        Console.Write("Der 'r' er radius og 'h' er høyde. \n");
    }

    static void Utskrift(double radius, double hoyde, double volum) {
        Console.Write("Volum til en sylinder med radus " + radius.ToString());
        Console.Write(" og høyde " + hoyde.ToString() + " er lik "); 
        Console.WriteLine(volum.ToString());
    }

    static void LesSylinderDimensjoner(out double radius, out double hoyde) {
        Console.Write("Les in radius : ");
        radius = Convert.ToDouble(Console.ReadLine());
        Console.Write("Les in høyde : ");
        hoyde = Convert.ToDouble(Console.ReadLine());
    }

    static double SylinderVolum(double radius, double hoyde) {
        return System.Math.PI * System.Math.Pow(radius, 2) * hoyde;
    }
}
