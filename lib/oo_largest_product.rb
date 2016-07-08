# Implement your object-oriented solution here!

class LargestProduct
  attr_accessor :width, :n

  def initialize(n)
    @n = n
  end

  def largest_product
    return if !@width

    products = []
    digits = @n.to_s.split("").map{|digit| digit.to_i}
    return if @width > digits.length
    temp = 1
    for i in 0..999
      temp = digits.slice(i, width).inject(:*)
      products.push(temp)
    end

    products.max
  end
end
