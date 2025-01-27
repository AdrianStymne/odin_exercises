class Stock_picker
    def best_sell_day_for_given_day(stock_prices, day = 0)
        stock_prices.reduce do |max_difference, day_price|
            initial_price = stock_prices[day]
            difference = day_price - initial_price 
            if difference > max_difference
                max_difference = difference
            else
                max_difference
            end 
        end
        suggested_sell_day = stock_prices.find_index(day_price) 
        [difference,suggested_sell_day]
        
    end
    def find_biggest_difference(stock_prices)
    end  
        

 
end


s = Stock_picker.new
prices = [2,5,7,5,10,12,1,18,4,2]
sell = s.best_sell_day_for_given_day(prices)