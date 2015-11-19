module Enumerable
  def my_each
    return self if !block_given?
    for i in self
      yield i
    end
  end

  def my_each_with_index
    return self if !block_given?
    for i in 0...self.length
      yield self[i], i
    end
  end

  def my_select
    return self.to_enum if !block_given?
    result = []
    for i in self
      result << i if yield(i)
    end
    return result
  end

  def my_all?
    return true if !block_given?
    for i in self
      if yield i
        return true
      else
        return false
      end
    end
  end

  def my_any?
    if block_given?
      for i in self
        return true if yield i
      end
      return false
    end
    return true if self != nil
    return false
  end

  def my_none?
    for i in self
      if block_given?
        return false if yield i
      else
        return true if i == nil || i == false
      end
    end
    return true
  end

  def my_count (num=nil)
    count = 0
    for i in self
      if block_given?
        count += 1 if yield i
      elsif num != nil
        count += 1 if i == num
      else
        count += 1
      end
    end
    return count
  end

  def my_map
    array = []
    if block_given?
      for i in self
        array << yield(i)
      end
      return array
    end
    return array
  end

  def my_map_2
  end

  def my_inject(arg)
    if block_given?
    end
  end
end

x = [1,2,3,4,5,6]
y = ["123","cat","dog","bear","aardvark"]
#x.my_each {|i| puts i}
#x.my_each_with_index {|item,index| puts "This is item #{index}: #{item}"}
#puts "#{x.my_select {|i| i.even?}}"
#puts "#{y.my_all? {|word| word.length >=3}}"
#puts "#{y.my_any? {|word| word.length > 7}}"
#puts "#{y.my_none? {|word| word.length > 8}}"
#puts "#{x.my_count {|i| i%2 == 0}}"
#puts "#{(1..4).my_map {|i| i*i}}"
