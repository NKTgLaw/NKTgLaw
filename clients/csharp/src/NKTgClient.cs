namespace NKTgLaw
{
    /// <summary>
    /// Core client for NKTg Law (Nguyen Khanh Tung).
    /// Standardized implementation for universal dynamics.
    /// </summary>
    public class NKTgClient
    {
        public double X { get; }
        public double V { get; }
        public double M { get; }
        public double DmDt { get; }

        public NKTgClient(double x, double v, double m, double dmDt)
        {
            X = x;
            V = v;
            M = m;
            DmDt = dmDt;
        }

        // Returns linear momentum (p = m * v)
        public double Momentum()
        {
            return M * V;
        }

        // Returns NKTg1 (x * p)
        public double NKTg1()
        {
            return X * Momentum();
        }

        // Returns NKTg2 ((dm/dt) * p)
        public double NKTg2()
        {
            return DmDt * Momentum();
        }
    }
}
