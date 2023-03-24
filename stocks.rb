days = [17,3,6,9,15,8,6,1,10]

def stock_picker(days)

    best_profit = 0
    best_day_pair = ""


   days.each_with_index do |price1, id1|
    days.each_with_index do |price2, id2|

        profit = price2 - price1

        if profit > best_profit && id1 < id2
            best_profit = profit
            best_day_pair = [id1, id2]
        end
    end
    end
   p "Best to buy on #{best_day_pair[0]} and sell on #{best_day_pair[1]}. You will make #{best_profit}$"

end

stock_picker(days)