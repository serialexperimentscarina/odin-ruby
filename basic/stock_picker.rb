
# Implements a method #stock_picker that takes in an array of stock prices,
# one for each hypothetical day. It should return a pair of days representing 
# the best day to buy and the best day to sell. Days start at 0.

def stock_picker(stock_prices)
  best_profit = 0
  best_days = [0, 0]

  stock_prices[...-1].each_with_index do |buying_value, buying_day|
    next if buying_value > stock_prices[best_days[0]]

    stock_prices[buying_day...].each_with_index do |selling_value, days_since_bought|
      profit = selling_value - buying_value

      if (profit > best_profit)
        best_days = [buying_day, (days_since_bought + buying_day)]
        best_profit = profit
      end

    end
  end

  best_days
end

stock_prices = [17,3,6,9,15,8,6,1,10]
(buying_day, selling_day) = stock_picker(stock_prices)

puts "You should buy on day #{buying_day} and sell on day #{selling_day}"
puts "For a profit of $#{stock_prices[selling_day]} - $#{stock_prices[buying_day]} = $#{(stock_prices[selling_day] - stock_prices[buying_day])}"