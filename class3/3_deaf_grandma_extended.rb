# Section 7.5 on page 49
# 4 points
#
# What if Grandma doesn’t want you to leave? When you shout BYE, she could
# pretend not to hear you. Change your previous program so that you have to
# shout BYE three times in a row. Make sure to test your program: if you shout
# BYE three times but not in a row, you should still be talking to Grandma.

puts "You knock on Grandma's door.  You know she's home but there is no answer."
puts  "You ring the alarmingly loud doorbell.  Finally you here Grandma say:"
puts '"WHO IS IT?"'
name = gets.chomp
puts 'There\'s a long pause, then: "OH NEVER MIND THEN, COME ON IN!"'
puts "You find the door unlocked and on the other side of it is grandma,"
puts "sitting in her favorite rocker."
puts '"OH, IT\'S YOU ' + name.upcase + '! WHY DIDN\'T YOU SAY?"'
puts '"NEVER MIND, NEVER MIND. SIT! TELL ME, WHAT DO YOU HAVE TO ALLOW?"'

count = 0

while true
  salutation = gets.chomp

  if salutation == salutation.upcase && salutation == "BYE"
    if count !=2
      count += 1
      puts '"WHAT\'S THE RUSH? HAVE ANOTHER COOKIE AND SPIN ME A YARN!"'
    else count == 2
      puts '"SO GOOD TO SEE YOU ' + name.upcase + '!'
      puts 'PLEASE GET THE DOOR ON YOUR WAY OUT!"'
      break
    end
  elsif salutation == salutation.upcase
    year = 1930 + rand(21)
    puts "\"OH NO DEAR, NOT SINCE #{year}! NOW GO ON, TELL ME MORE.\""
    count = 0
  elsif
    puts "\"HUH? OH DO SPEAK UP, #{name.upcase}, YOU ALWAYS WERE SO MEEK!\""
    count = 0
  end
end

=begin
I had to make some choice stylistically with the "" and '' I hope it doesn't
appear too inconsistent.
I'm also not sure if the bye_int is the best way to resolve the 3-in-a-row
problem as it (again) appears to violate the DRY rule. But hell, it works.
=end
