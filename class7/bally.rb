puts "Do you know what is going on?"
text = gets.chomp
puts "What the hell is redact?"
redact = gets.chomp.upcase
words = text.split (" ")
bally = redact.split (" ")
check = bally.length
words.each do |x|
y = x.upcase
z = 0
    bally.each do |cyrk|
        if y == cyrk.upcase
        print "REDACTED "
        z = 0
        else
         z += 1
         print x + " " unless z != check
     end
    end
end
