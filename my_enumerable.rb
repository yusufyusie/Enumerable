module MyEnumerable
  def all?
    @list.each do |el|
      return false unless yield el
    end
    true
  end

  def any?
    @list.each do |el|
      return true if yield el
    end
    false
  end

  def filter
    result = []
    @list.each do |el|
      result << el if yield el
    end
    result
  end
end
