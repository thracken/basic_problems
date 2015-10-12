puts
answer = ""
while answer != "BYE"
  puts "WHAT's THAT, SONNY?"
  answer = gets.chomp
  if (answer == answer.upcase)
    year = 1930 + rand(20)
    puts "NO, NOT SINCE " + year.to_s
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end
