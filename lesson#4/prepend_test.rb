module FooBar
	def hello
		puts "module Foobar"
		super
	end
end

class Foo
	def hello
		puts 'class Foo'
	end
end

class Bar < Foo
	# include FooBar
	 prepend FooBar

	def hello
		puts 'Bar'
		super
	end
end

Bar.new.hello

