package calc

import "testing"

func TestGetMaxProfit(t *testing.T) {
	type test struct {
		test_data []int
		want      int
	}

	tests := []test{
		{test_data: []int{42, 11, 7, 21, 7, 13, 5, 9}, want: 14},
		{test_data: []int{43, 1, 17, 5, 11, 16, 2, 19}, want: 18},
		{test_data: []int{52, 100, 10, 200, 53, 7, 160}, want: 190},
	}

	for _, testCase := range tests {
		got := GetMaxProfit(testCase.test_data)
		want := testCase.want
		if got != want {
			t.Errorf("got %q, wanted %q", got, want)
		}
	}
}
