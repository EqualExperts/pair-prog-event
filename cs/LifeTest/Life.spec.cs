using System;
using Xunit;

namespace LifeTest
{
  public class UnitTest1
  {
    [Fact]
    public void DummyTest()
    {
      var state = new int[][] {
        new[] { 1, 1 },
        new[] { 0, 1 },
        new[] { 1, 1 },
      };
      var next = Life.Engine.Run(state);

      Assert.Equal(next, state);
    }
  }
}
