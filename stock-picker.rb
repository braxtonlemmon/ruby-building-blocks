def stock_picker(prices)
    add = 0
    while true
        high = prices.max
        low = prices.min
        if prices.index(low) < prices.index(high)
            return [(prices.index(low) + add), (prices.index(high) + add)]
        elsif prices.index(high) == 0
            prices.shift
            add += 1
        elsif prices.index(low) == -1
            prices.pop
        else
            first = prices[0..prices.index(high)]
            second = prices[prices.index(low)..-1]
            if (first.max - first.min) > (second.max - second.min)
                high, low = first.max, first.min    
            else
                high, low = second.max, second.min
            end
            return [(prices.index(low) + add), (prices.index(high) + add)]
        end
    end
end

prices = Array.new(10){rand(1..99)}
p prices
p stock_picker(prices)
