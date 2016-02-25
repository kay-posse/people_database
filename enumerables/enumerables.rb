class Array
  def any?(&block)
    each do |element|
      return true if block.call(element)
    end
    false
  end

  def select(&block)
    result = []
    each do |element|
      result << element if block.call(element)
    end
    result
  end

  def reduce(start = 0, &block)
    result = start
    each do |element|
      result = block.call(result, element)
    end
    result
  end

  def reject(&block)
    result = []
    each do |element|
      result << element if !block.call(element)
    end
    result
  end
end


ages = [12, 11, 13, 18, 14,15, 20]

p ages.any? { |age| age == 21 }
p ages.select { |age| age > 14 }
p ages.reduce(0) { |sum, num|  sum + num }
p ages.reject { |num| num % 2 != 0 }
