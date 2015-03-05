the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# Often the way non ruby languages do it
for number in the_count
  puts "This is count #{number}"
end

# More common way of doing it in Ruby
fruits.each do |fruit|
  puts "A fruit of type #{fruit}"
end

# Same command as ruby example above just written differently
change.each {|i| puts "I got #{i}"}

elements =[]
(0..5).each do |i|
  puts "adding #{i} to the list"
  elements.push(i)
end

elements.each {|i| puts "Element was: #{i}" }
