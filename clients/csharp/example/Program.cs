using System;
using NKTgLaw; // Ensure this matches the namespace in NKTgClient.cs

class Program
{
    static void Main()
    {
        // Experimental data: x=2.0, v=3.0, m=5.0, dm/dt=0.1
        var client = new NKTgClient(2.0, 3.0, 5.0, 0.1);

        Console.WriteLine("--- NKTg Law C# Calculation Results ---");
        
        // Output results using Product Logic
        // Expected: Momentum=15.0, NKTg1=30.0, NKTg2=1.5
        Console.WriteLine($"Momentum (p):   {client.Momentum():F1}");
        Console.WriteLine($"NKTg1 (x * p):  {client.NKTg1():F1}");
        Console.WriteLine($"NKTg2 (dm * p): {client.NKTg2():F1}");

        Console.WriteLine("---------------------------------------");
    }
}
