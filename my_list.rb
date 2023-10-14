require_relative 'my_enumerable'
class Mylist
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block)
  end
end

new_list = Mylist.new(1, 2, 3, 4) # true
puts 'My Lists are  [1, 2, 3, 4] and dispaly the result besed on the condition!'
puts "All? (greater than 0): #{new_list.all?(&:positive?)}" # Output: true
puts "Any? (greater than 5): #{new_list.any? { |e| e > 5 }}" # Output: false
filtered_element = new_list.filter(&:even?)
puts "Filtered Item (even numbers): #{filtered_element}"

# Test #all?
puts(new_list.all? { |e| e < 5 })
puts(new_list.all? { |e| e > 5 })

# Test #any?
puts(new_list.any? { |e| e == 2 })
puts(new_list.any? { |e| e == 5 })

# Test #filter
puts(new_list.filter(&:even?))
