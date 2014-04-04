n = gets.chomp.to_f
array = []

0.upto(n) { |x|
array.push(x)
}

print array
puts ".."
puts "Removal begins..."
puts "."
puts "."
# array.count = x

# while
# (n/2)

# *(n/2) == x=1

array.delete(0)
while array.count >= 1
  y = 0
  puts ""
  print array
  array.each do |x|
      y += 1
      if y == 1 && x != 0
        array.delete(x)
        y -= 1

      else
        ""
      end
  end
end

puts ""
print array

sleep 3

# array.each do |x|
#   y += 1
#   if y == 1
#     array.delete(x)
#     y -= 1

#   else
#     ""
#   end
# end

# puts ""

# print array

# y = 0
# array.each do |x|
#   y += 1
#   if y == 0
#     array.delete(x)
#   else
#     y -= 2
#   end
# end

# puts ""
# print array

# # sleep 5

# # 5.upto(20) {|x| puts x*3}

# # Array.new(n)

# # print array

# # array.each do |x|
# #   if x.is_odd?
# #     puts x
# #   else
# #     ""

# # end



