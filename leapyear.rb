puts
puts "Leap Year Calculator"
puts "What's the starting year?"
start_year = gets.chomp.to_i
puts "And the ending year?"
end_year = gets.chomp.to_i

if (start_year < 0 or end_year < 0 or Integer(start_year) == nil or Integer(end_year) == nil)
  puts "One of your years wasn't valid, try again!"
else
  year = start_year
  puts "The leap years between " + start_year.to_s + " and " + end_year.to_s + " are:"
  while (year <= end_year)
    if (year % 4 == 0)
      if (year % 100 == 0)
        if (year % 400 == 0)
          puts year
        end
      else
        puts year
      end
    end
    year +=1
  end
end
