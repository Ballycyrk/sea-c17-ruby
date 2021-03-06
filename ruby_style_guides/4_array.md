## Array Guidelines

#### No spaces before `[`

```ruby
# bad
some_array [42]

# good
some_array[42]
```


#### No spaces after `[` or before `]`

```ruby
# bad
some_array[ 42 ]

# good
some_array[42]
```


#### Prefer `size` over `length` and `count`

```ruby
# bad
some_array.length
some_array.count

# good
some_array.size
```


#### Prefer `{...}` over `do...end` for single-line iterator blocks

```ruby
# bad
[1, 2, 3].each do |element|
  puts element
end

# good
[1, 2, 3].each { |e| puts e }
```

**TIP:** Name the parameter `e` for single-line iterator blocks


#### Prefer `each` over `for` because of their block scope

```ruby
# bad
for item in [1, 2, 3] do
  puts item
end

# item is accessible outside the for loop
item # => 3

# good
[1, 2, 3].each { |item| puts item }

# item is not accessible outside the each block
item # => NameError: undefined local variable or method `item'
```


#### Prefer `each` over `for` because of their container's scope

```ruby
# bad
item = 99

for item in [1, 2, 3] do
  puts item
end

# item is accessible outside the for loop
item # => 3

# good
item = 99

[1, 2, 3].each { |item| puts item }

# item is not accessible outside the each block
item # => 99
```


#### Use `next` to prematurely skip to the next iteration

```ruby
# bad
[1, 2, 3].each do |item|
  if item >= 2
    puts item
  end
end

# good
[1, 2, 3].each do |item|
  next if item < 2
  puts item
end
```


#### Use `break` to prematurely exit an iterator

```ruby
# bad
[1, 2, 3].each do |item|
  if item < 2
    puts item
  end
end

# good
[1, 2, 3].each do |item|
  break if item >= 2
  puts item
end
```
