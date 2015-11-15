def substrings (phrase, ref)
  count = {}
  ref.each do |substring|
    number = phrase.scan(substring).length
    count[substring] = number unless number.zero?
  end
  return count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?",dictionary)
