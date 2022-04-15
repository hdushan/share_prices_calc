# content of test_sample.py
import calc

def test_calculation():
    assert calc.get_max_profit([42, 11, 7, 21, 7, 13, 5, 9]) == 14
    assert calc.get_max_profit([43, 1, 17, 5, 11, 16, 2, 19]) == 18
    assert calc.get_max_profit([52, 100, 10, 200, 53, 7, 160]) == 190