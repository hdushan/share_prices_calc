
def get_max_profit(stock_price_list):
    max_profit = 0
    for index, current_price in enumerate(stock_price_list):
        furture_prices = stock_price_list[index:]
        max_price_list = [future_price-current_price for future_price in furture_prices]
        max_money_made = max(max_price_list)
        if(max_money_made> max_profit):
            max_profit = max_money_made
    return max_profit