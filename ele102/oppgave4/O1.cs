using System;
class O1 {

    public static void Main(String[] args) {
        int nr_inputs = 10;
        double[] values = new double[nr_inputs]; 

        try {
            for(int i = 0; i < nr_inputs; i++) {
                Console.Write("Enter value: ");
                double inp = Convert.ToDouble(Console.ReadLine());
                values[i] = inp;
            }
            print_formatted(values);
        } catch(Exception e) {
            Console.WriteLine(e.Message + ", program aborted.");
        }  
        Console.ReadKey();
    }
    
    private static void print_formatted(double[] values) {
        Console.WriteLine("Celsius\tKelvin\tFahrenheit");
        for (int i = 0; i < values.Length; i++) {
            Console.WriteLine(values[i] + "\t" + convert_to_kelvin(values[i]) + "\t" + convert_to_fahrenheit(values[i]));
        }
    }

    private static double convert_to_fahrenheit(double celsius) {
        return (celsius * (9.0/5.0)) + 32;
    }
    
    private static double convert_to_kelvin(double celsius) {
        return celsius + 273.15;
    }
}
