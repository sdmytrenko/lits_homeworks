module Sortable
  def sort_by(obj)
    # obj.sort_by {|element| element.fetch()}
    # arr.sort_by {|element| element.fetch(:a)}
    # self
    @elements.sort_by {|x| x.fetch obj}
    self
  end
end


class Storage
  include Sortable
  attr_reader :elements

  def initialize
    @elements = []
  end

  def inspect
    "<storage with #{@elements.count} elements>"
  end

  def insert(element)
    @elements << element
    self
  end

  def bulk_insert(elements)
    elements.each {|x| self.insert x}
    self
  end

  alias :<< :insert
  alias :+ :bulk_insert
end

a = Storage.new
a + [{a: 1, b: 2, c: 3}, {a: 2, b: 4, c:1}, {a: 1, b: 4, c: 7}, {a: 5, b: 3, c: 2}]
p a.elements
p a.inspect
# p a.insert(0)
# p a.elements
# p a.bulk_insert({a: 2, b: 4, c:1})
p a.elements
puts "*************************"
p a.sort_by(:a).elements 
#[{:a=>1, :b=>2, :c=>3}, {:a=>1, :b=>4, :c=>7}, {:a=>2, :b=>4, :c=>1}, {:a=>5, :b=>3, :c=>2}]
p a.sort_by(:b).elements
# [{:a=>1, :b=>2, :c=>3}, {:a=>5, :b=>3, :c=>2}, {:a=>2, :b=>4, :c=>1}, {:a=>1, :b=>4, :c=>7}]




