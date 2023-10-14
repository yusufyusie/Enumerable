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

new_list = Mylist.new([1, 2, 3, 4]) # true

# Test #all?
puts(new_list.all? { |e| e < 5 })
puts(new_list.all? { |e| e > 5 })

# Test #any?
puts(new_list.any? { |e| e == 2 })
puts(new_list.any? { |e| e == 5 })

# Test #filter
puts(new_list.filter(&:even?))
