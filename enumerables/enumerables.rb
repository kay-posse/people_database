class Array
  def any?(&block)
    each do |element|
      return true if block.call(element)
    end
    false
  end
end


ages = [12, 11, 13, 18, 14,15, 20]

p ages.any? { |age| age == 21 }
