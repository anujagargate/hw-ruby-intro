# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum=0
  arr.each do |i|
  sum = i+sum
end
  return sum
  
end

def max_2_sum arr
   
   if arr.length == 1
     arr[0]
    elsif arr.length == 0
     return 0
    else
    arr.sort!{|x,y| y<=>x}
    return arr[0]+arr[1]
   end
end



def sum_to_n? arr, n
  puts "true" if arr.all? {|i| i.is_a?(Integer) }
  puts "true" if n.is_a?(Integer)
  if arr.length == 0
    return false
  elsif arr.length == 1
    return false
  else
    count = arr.length
    while (count !=0 )
    arr.rotate!
    puts "element1 : #{arr[0]}"
    puts "element2 : #{arr[1]}"
    puts "No to be compared : " + n.to_s 
    return true if n == arr[0] + arr[1]
    count -=1
    end
  end
end


# Part 2

def hello(name)
  return "Hello, "+ name.to_s
end

def starts_with_consonant? s
  if s =~ /[aeiouAEIOU]/ || s.length == 0 || s =~ /[0-1]/
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if s.length == 0 || s =~ /[[:alpha:]]/
    return false
  else
    return true if s.to_i % 4 == 0
  end
end



# Part 3

class BookInStock
  attr_accessor:isbn
  attr_accessor:price

def initialize (isbn,price)
  
  if 
    isbn.length == 0
    raise ArgumentError
  else
    @isbn =isbn
  end
  if price <= 0
    raise ArgumentError
  else
    @price=price
  end
end



def price_as_string
  
  #puts "$" + "#{'%.2f' %@price}"
  return "$"+"#{'%.2f' %@price.to_f}"
end


end
