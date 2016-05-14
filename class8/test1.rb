cats = Hash.new
  cats[:sir_wallace] = "Russian Blue"
  cats["sir wallace"] = "French Thing"


cats.each_key {|k| puts k.class
puts k
}

shelf_a = [cats, "just a string", [1,2,3]]
shelf_a.each do |x, y|
  if y.nil?
    puts x
  else
    z = shelf_a[x+1].class
    puts z
  end
end

class MyClass
  @@my_var = "Hello"
  puts @@my_var

  def MyClass.global_access
    @@my_var
  end
end

puts "now outside the class"
puts "#{MyClass.global_access}"
