namespace NKTgLaw
{
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

        public double Momentum()
        {
            return M * V;
        }

        public double NKTg1()
        {
            return Momentum() + DmDt * X;
        }

        public double NKTg2()
        {
            return NKTg1() / M;
        }
    }
}
