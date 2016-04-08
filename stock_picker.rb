def stock_picker (array)
	buy_day = 0
	sell_day = 1
	current_day = 1
	current_profit = array[sell_day] - array[buy_day]
	puts "hi"
	while current_day < array.size

		if array[current_day]-array[buy_day] > current_profit
			sell_day = current_day
			current_profit = array[sell_day] - array[buy_day]
			current_day = buy_day
			while current_day < sell_day
				if array[sell_day] - array[current_day] > current_profit
					buy_day = current_day
					current_profit = array[sell_day] - array[buy_day]
				end
				current_day = current_day + 1
				#puts current_day
			end
		end
		current_day = current_day + 1
	end
	answer = [buy_day, sell_day]
end