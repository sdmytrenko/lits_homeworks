class Formula

	def initialize(number)
		@expression = number
		@string = "#{@expression}"
	end

	def add(number)
		@string += " + #{number}"
		@expression += number
	end

	def substract(number)
		@string += " - #{number}"
		@expression -= number
	end

	def divide(number)
		@string = "(" + @string + ") / #{number}"
		@expression /= number
	end

	def multiply(number)
		@string = "(" + @string + ") * #{number}"
		@expression *= number
	end

	alias :+ :add
	alias :- :substract
	alias :/ :divide
	alias :* :multiply

	def result
		@expression
	end

	def to_s
		@string
	end
end

# a = Formula.new 5
# a.add 10
# a.result
# a.substract 3
# a.divide 6
# a.add 8
# a.multiply 8
# a - 12
# a / 2
# a + 7
# a * 3
# p a.result
# p a.to_s