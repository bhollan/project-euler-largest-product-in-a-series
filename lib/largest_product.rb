# Implement your procedural solution here!

def largest_product(n, width)
  # width = 13
  products = []
  digits = n.to_s.split("").map{|digit| digit.to_i}
  return if width > digits.size
  temp = 1
  for i in 0..999
    temp = digits.slice(i, width).inject(:*)
    products.push(temp)
  end

  products.max
end
