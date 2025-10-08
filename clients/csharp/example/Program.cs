using System;
using NKTgLaw;

class Program
{
    static void Main()
    {
        var client = new NKTgClient(2.0, 3.0, 5.0, 0.1);
        Console.WriteLine("Momentum: " + client.Momentum());
        Console.WriteLine("NKTg₁: " + client.NKTg1());
        Console.WriteLine("NKTg₂: " + client.NKTg2());
    }
}
