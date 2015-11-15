def stock_picker (prices)
  buy_day = 0
  sell_day = 0
  max_profit = 0
  prices[0..-2].each_with_index do |buy, i|
    prices[i+1..-1].each_with_index do |sell, j|
      if (sell - buy) > max_profit
        sell_day = j + (i + 1)
        buy_day = i
        max_profit = sell - buy
      end
    end
  end
  return puts "[#{buy_day},#{sell_day}]"
end

puts "Enter a series of numbers, separated by commas."
array = gets.chomp.split(",").map { |x| x.to_i }
stock_picker(array)
