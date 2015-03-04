# Makes filename point to a specific file named when you run this program
filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

# Is giving the user the chance to terminate the program by allowing user input
$stdin.gets

puts "Opening the file..."
target = open(filename, 'w') # Opens the file given above in 'w'rite mode

puts "Truncating the file.  Goodbye!"
target.truncate(0) # Deletes the text in the file given above

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

# Writes the contents of the given variables into the file given above
target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close # Closes the file given above
