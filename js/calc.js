function get_max_profit(stock_price_list) {
    max_profit = 0
    stock_price_list.forEach((current_price, index) => {
        furture_prices = stock_price_list.slice(index)
        max_price_list = furture_prices.map((future_price) => {
            return (future_price - current_price)
        })
        max_price = Math.max(...max_price_list)
        if(max_price > max_profit) { max_profit = max_price }
    })
    return max_profit
}

module.exports = get_max_profit