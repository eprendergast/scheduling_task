require 'date'

#testing the Date methods

puts '8th July 2019'

d = Date.parse('8th July 2019')

puts "The year is #{d.year}"
puts "The month is #{d.month}"
puts "The day is #{d.mday}"
puts "I don't know what this is: #{d.wday}"

d += 1
puts d
