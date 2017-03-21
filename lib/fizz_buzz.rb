def fizz_buzz(number)

  #if number.respond_to?(:to_i)   # Why is this not working?
  if !(number.is_a? Integer)
    return "Please call with an integer number"
  end

  def modus_is_zero(number, divider)
    number % divider == 0
  end

  case
  when modus_is_zero(number, 15) then 'fizz_buzz'
  when modus_is_zero(number, 5) then 'buzz'
  when modus_is_zero(number, 3) then 'fizz'
  else number
  end



#  case
#  when number % 15 == 0
#    'fizz_buzz'
#  when number % 3 == 0
#    'fizz'
#  when number == 5 || number == 10  # Not needed, only to see how to enter several numbers.
#    'buzz'
#  when number % 5 == 0
#    'buzz'
#  else
#    number
#  end

end
