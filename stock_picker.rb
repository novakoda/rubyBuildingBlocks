def stock_picker(prices)
    best_profit = nil
    prices.each_with_index do |buy_price, buy_day|
        prices.slice(buy_day, prices.length).each_with_index do |sell_price, days_after_buy|
            sell_day = days_after_buy + buy_day
            profit = sell_price - buy_price
            if !best_profit || profit > best_profit
                @best_buy_day = buy_day
                @best_sell_day = sell_day
                best_profit = profit
            end
        end
    end
    [@best_buy_day, @best_sell_day]
    puts "Buy on day #{@best_buy_day + 1} and sell on day #{@best_sell_day + 1} for a profit of $#{best_profit}" 
end


stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([4,6,1,2,4,8,5,11,6])