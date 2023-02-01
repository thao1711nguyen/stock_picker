
#Program starts: accept an array of stock prices
    #FOR each price in stock-prices
        #keep track of the days of buying and selling
        #find the maximum price among the rest
        #subtract the maximum price with the price
        #store info in a hash: 
            #key is an array of index-of-price and index-of-maximum-price
            #value is the profit
        #return the hash
    #get the key of the highest value (profit) in the hash
#Return an array of day-to-buy and day-to-sell

def stock_picker(stock_prices)
    buying_day = 0
    trading = stock_prices.reduce(Hash.new()) do |trading, buying_price|
        if buying_day < stock_prices.length-1 
            selling_price = stock_prices[buying_day+1..stock_prices.length-1].max
            selling_day = stock_prices.index(selling_price)
            profit = selling_price - buying_price
            trading[profit] = [buying_day,selling_day]
            buying_day +=1
            trading
        else 
            trading
        end
    end
    maximum_profit = trading.keys.max
    trading_days = trading[maximum_profit]  
end

p stock_picker([17,3,6,9,15,8,6,1,10])



    

        

