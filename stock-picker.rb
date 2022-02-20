def stock_picker(stock_prices)
  result = []
  highest_profit = 0

  stock_prices.each_with_index do |buy_price, bindex|
    stock_prices.each_with_index do |sell_price, sindex|
      profit = sell_price - buy_price
      if sindex > bindex && profit > highest_profit
        highest_profit = profit
        result = [bindex, sindex]
      end
    end
  end
  result

end

p stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12