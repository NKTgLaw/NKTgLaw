const { NKTgClient } = require('../src/index');

function runBenchmark(iterations = 100000) {
  const start = Date.now();

  for (let i = 0; i < iterations; i++) {
    const client = new NKTgClient(2.0, 3.0, 5.0, 0.1);
    client.momentum();
    client.nktg1();
    client.nktg2();
  }

  const end = Date.now();
  const duration = end - start;
  console.log(`Ran ${iterations} iterations in ${duration} ms`);
  console.log(`Average time per iteration: ${(duration / iterations).toFixed(4)} ms`);
}

runBenchmark();
