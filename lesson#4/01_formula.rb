class Formula

	def initialize(number)
		@expression = number
		@string = @expression.to_s
	end

	def add(number)
		@expression += number
		@string += '+' + number.to_s
		return @expression
	end

	def substract(number)
		@expression -= number
		@string += '-' + number.to_s
		return @expression
	end

	def divide
		yield
	end

	def multiply
		yield
	end

	def result
		@expression
	end

	def to_s
		@string
	end

end

a = Formula.new 5
p a.result
p a.add 10
p a.result
p a.to_s
p a.substract 3
# p a.result
# p a.to_s