class Array
  def any?(&block)
    x = -1
    while x < self.length do
      x += 1
      if block.call
        return true
      end
      false
    end

  end
end


ages = [12, 11, 13, 18, 14,15, 20]
ages.any? { |age| age > 18 }
# puts ages.each do |age|
#
#   if age > 18
#     puts "found 18"
#     return true
#   end
#   false
# end
