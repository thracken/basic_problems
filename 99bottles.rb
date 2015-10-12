puts
puts "Are you ready?"
answer = gets.chomp
if (answer[0].downcase == "y")
  puts "Here we go!"
  counter = 99
  while counter > 0
    puts counter.to_s + " bottles of pop on the wall, " + counter.to_s + " bottles of pop!"
    puts "Take one down, pass it around, " + (counter-1).to_s + " bottles of pop!"
    puts
    counter -= 1
  end
else
  puts "Well, okay then."
end
