using System;

namespace O1
{
    class Program
    {
        static void Main(string[] args)
        {
            int a1, a2;
            char operasjon;

            Console.WriteLine("Oppgi to heltall"); // endret writeLine til WriteLine
            Console.Write("Tall 1: ");
            a1 = Convert.ToInt32(Console.ReadLine());
            Console.Write("Tall 2: ");
            a2 = Convert.ToInt32(Console.ReadLine()); // endret ToDouble til ToInt32, oppgaven spesifiserer heltall og ikke double
            Console.WriteLine("Oppgi ønsket operasjon: ");
            Console.Write("Operasjoner [+,*]:");
            operasjon = Convert.ToChar(Console.ReadLine());

            if (operasjon == '+') // endret "+" til '+', operasjon er av type char og ikke string
            {
                int resultat = a1 + a2; //la til type deklarasjon, resultat er ikke deklarert tidligere
                Console.Write(a1.ToString() + " + " + a2.ToString());
                Console.WriteLine(" = " + resultat.ToString());

            }
            else if (operasjon == '*') //2 endringer: 1. endret "*" til '*', må ha char. 2. Bytttet plass på else if og else setninger
            {
                int resultat = a1 * a2; //2 endringer: La til type deklarasjon og fjernet single quotes
                Console.Write("{0}, * {1}", a1, a2);
                Console.WriteLine(" = {0}", resultat);
            }
            else
            {
                Console.WriteLine("Uglydig operasjon oppgitt");
            }
            Console.WriteLine("Trykk på en knapp for å avslutte...");
            Console.ReadKey();
        }
    }
}
