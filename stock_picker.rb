require_relative 'shared/get_input.rb'

def stock_picker(prices)
  return nil if prices.length < 2

  buy_price, buy_day = prices[0], 0
  max_profit = 0
  optimal_days = Array.new(2)

  prices.each_with_index do |today_price, today|
    next if today == 0
    profit = today_price - buy_price

    if profit > max_profit
      max_profit = profit
      optimal_days[0], optimal_days[1] = buy_day, today
    end

    if buy_price > today_price
      buy_price, buy_day = today_price, today
    end
  end

  [optimal_days, max_profit]
end

prices = get_input('Give me an array with prices:')
puts stock_picker(prices)


# Possible Edge Case:
# Prices constantly decrease, e.g., [5, 4, 3, 2, 1]. The function will return [0, 1], 0 since no profit can be made.
# Amazing solution --> https://github.com/Kropyls/Stock-Picker/blob/main/stock-picker.rb