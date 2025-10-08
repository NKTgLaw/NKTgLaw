using Xunit;
using NKTgLaw;

namespace NKTgLawTests
{
    public class NKTgClientTests
    {
        [Fact]
        public void TestNKTg1()
        {
            var client = new NKTgClient(2, 3, 5, 0.1);
            Assert.Equal(15.2, client.NKTg1(), 1);
        }

        [Fact]
        public void TestNKTg2()
        {
            var client = new NKTgClient(2, 3, 5, 0.1);
            Assert.Equal(3.04, client.NKTg2(), 2);
        }
    }
}
