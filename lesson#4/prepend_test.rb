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

# Варіант з include FooBar:
# > Bar
# > module Foobar
# > class Foo

# Послідовність дій:
# 1. Вивід 'Bar'
# 2. Виклик батьківського метода за допомогою super, але в ієрархії
# наступним на один вище йде метод модуля FooBar, "module Foobar"
# (Правила пошуку метода - спочатку в класі, потім в підключених модулях,
# потім - вище по ієрархії)
# 3. Виклик super із модуля Foobar призводить до виклику метода в class Foo


# Варіант з prepend FooBar
# > module Foobar
# > Bar
# > class Foo

# prepend дає методам підключеного модуля вищий пріоритет (першу чергу
# при пошуку метода), ніж методи класу
