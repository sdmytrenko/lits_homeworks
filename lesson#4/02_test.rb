# module Sortable
# 	def sort_by
		
# 	end
# end



arr = [{a: 1, b: 2, c: 3}, {a: 2, b: 4, c:1}, {a: 1, b: 4, c: 7}, {a: 5, b: 3, c: 2}]

# arr.each do |element|
# 	puts element
# 	element_value =  element.fetch(:a) #1
# 	puts element_value
# 	# element.sort_by {}



# end

p arr.sort_by {|element| element.fetch(:a)}
puts
p arr.sort_by {|element| element.fetch(:b)}
puts 
p arr.sort_by {|element| element.fetch(:b, :a)}
puts
p arr.sort_by { |element| element[:a]}

