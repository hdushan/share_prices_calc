const get_max_profit = require('./calc');

test('Calculator', () => {
  expect(get_max_profit([42, 11, 7, 21, 7, 13, 5, 9])).toBe(14);
  expect(get_max_profit([43, 1, 17, 5, 11, 16, 2, 19])).toBe(18);
  expect(get_max_profit([52, 100, 10, 200, 53, 7, 160])).toBe(190);
});