package calc

import (
	"sort"
)

func GetMaxProfit(stock_price_list []int) int {
	max_profit := 0
	for index, current_price := range stock_price_list {
		furture_prices := stock_price_list[index:]
		var profits []int
		for _, price := range furture_prices {
			profits = append(profits, price-current_price)
		}
		sort.Ints(profits)
		curr_max_profit := profits[len(profits)-1]
		if curr_max_profit > max_profit {
			max_profit = curr_max_profit
		}
	}
	return (max_profit)
}
