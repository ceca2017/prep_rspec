def fizz_buzz(number)

  #if number.respond_to?(:to_i)   # Why is this not working?
  if !(number.is_a? Integer)
    return "Please call with an integer number"
  end

  case
  when number % 15 == 0
    'fizz_buzz'
  when number % 3 == 0
    'fizz'
  when number == 5 || number == 10  # Not needed, only to see how to enter several numbers.
    'buzz'
  when number % 5 == 0
    'buzz'
  else
    number
  end
  #if number % 3 == 0
  #  'fizz'
  #else
  #  number
  #end
end

# Test the program visually with creating an array with numbers to test
# Not the best solution I know. I could just put the puts in the 100.times loop
# right away without any array, see below (i.e. 100.times {|n| puts "#{n+1} = #{fizz_buzz(n+1)}"}).
# But I wanted to practice the array usage and looping over it
def test_fizz_number(number_to_test_to)
  output = []
  number_to_test_to.times {|n| output << fizz_buzz(n+1)}
  i=0 # Counter to compare with
  output.each do |n|
    i += 1
    puts "#{i} = #{n}"
  end
end

# Better test_fizz_number
def test_fizz_number2(number_to_test_to)
  number_to_test_to.times {|n| puts "#{n+1} = #{fizz_buzz(n+1)}"}
end

puts "test_fizz_number:"
test_fizz_number(100)

puts "test_fizz_number2:"
test_fizz_number2(123)
