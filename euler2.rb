first_number = 1
second_number = 2
next_number = 0
answer = 2

while next_number < 4000000 do
  next_number = first_number + second_number
  if next_number % 2 == 0
    answer += next_number
  end
  first_number = second_number
  second_number = next_number
end

puts answer
