# frozen_string_literal: true

def get_max_profit(stock_price_list)
  max = 0
  stock_price_list.each_with_index do |price, index|
    furture_prices = stock_price_list[index..stock_price_list.length]
    max_price_list = furture_prices.map { |i| i - price }
    max_money_made = max_price_list.max
    max = max_money_made if max_money_made > max
  end
  max
end
