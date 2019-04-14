using System;

public class O1 {
    public static void Main(string[] args) {
        double input = Convert.ToDouble(Console.ReadLine());
        Console.WriteLine(input); 
        
        double estimate = (1+input)/2;
        double upper = input;
        double lower = 1;
        while(abs_diff(input, estimate*estimate) > 0.0001) {
            if ((estimate*estimate) > input) {
                upper = estimate;
                estimate = (lower+upper)/2;
            }
            else {
                lower = estimate;
                estimate =(lower+upper)/2;
            }
        }
        Console.WriteLine(estimate);
        Console.ReadKey();

    }

    private static double abs_diff(double d1, double d2) {
        if (d1 < 0) d1 = -d1;
        if (d2 < 0) d2 = -d2;
        return (d1 >= d2 ? d1-d2 : d2-d1);
    }
}
