const { NKTgClient } = require('../src/index');

test('nktg1 calculation', () => {
  const client = new NKTgClient(2, 3, 5, 0.1);
  expect(client.nktg1()).toBeCloseTo(15.2, 2);
});

test('nktg2 calculation', () => {
  const client = new NKTgClient(2, 3, 5, 0.1);
  expect(client.nktg2()).toBeCloseTo(3.04, 2);
});
