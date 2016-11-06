Є клас `Storage`, який вміє зберігати в собі елементи і видавати їх назовні. Для цього в нього є методи `insert`, `bulk_insert` і `elements`. Реалізувати модуль `Sortable`, який дозволить такий синтаксис: `a.sort_by(:a).elements`

### Клас з модулем `Sortable`
```ruby
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
```

### Приклад роботи

```ruby
irb(main):049:0> a = Storage.new
=> <storage with 0 elements>
irb(main):050:0> a + [{a: 1, b: 2, c: 3}, {a: 2, b: 4, c:1}, {a: 1, b: 4, c: 7}, {a: 5, b: 3, c: 2}]
=> <storage with 4 elements>
irb(main):051:0> a.sort_by(:a).elements
=> [{:a=>1, :b=>2, :c=>3}, {:a=>1, :b=>4, :c=>7}, {:a=>2, :b=>4, :c=>1}, {:a=>5, :b=>3, :c=>2}]
irb(main):052:0> a.sort_by(:b).elements
=> [{:a=>1, :b=>2, :c=>3}, {:a=>5, :b=>3, :c=>2}, {:a=>1, :b=>4, :c=>7}, {:a=>2, :b=>4, :c=>1}]
irb(main):053:0> a.sort_by(:b, :a).elements
=> [{:a=>1, :b=>2, :c=>3}, {:a=>5, :b=>3, :c=>2}, {:a=>1, :b=>4, :c=>7}, {:a=>2, :b=>4, :c=>1}]
irb(main):054:0> a.sort_by(:b, :c).elements
=> [{:a=>1, :b=>2, :c=>3}, {:a=>5, :b=>3, :c=>2}, {:a=>2, :b=>4, :c=>1}, {:a=>1, :b=>4, :c=>7}]
```

## Додаткове завдання
Реалізувати клас `SortedStorage`, який віднаслідувати від класу `Storage` таким чином, щоб він зберігав порядок сортування заданий раніше, навіть, якщо ми додаємо новий елемент. Обов'язкова умова - клас `Storage` ніяк не міняти. Він повинен бути такий як у прикладі.

### Приклад Роботи
```ruby
irb(main):055:0> b = SortedStorage.new
=> <storage with 0 elements>
irb(main):056:0> b + [{a: 1, b: 2, c: 3}, {a: 2, b: 4, c:1}, {a: 1, b: 4, c: 7}, {a: 5, b: 3, c: 2}]
=> <storage with 4 elements>
irb(main):057:0> b.sort_by(:b, :c).elements
=> [{:a=>1, :b=>2, :c=>3}, {:a=>5, :b=>3, :c=>2}, {:a=>2, :b=>4, :c=>1}, {:a=>1, :b=>4, :c=>7}]
irb(main):058:0> a << {a: 6, b: 1, c: 3}
=> <storage with 5 elements>
irb(main):059:0> a.elements
=> [{:a=>1, :b=>2, :c=>3}, {:a=>5, :b=>3, :c=>2}, {:a=>2, :b=>4, :c=>1}, {:a=>1, :b=>4, :c=>7}, {:a=>6, :b=>1, :c=>3}]
irb(main):060:0> b << {a: 6, b: 1, c: 3}
=> <storage with 5 elements>
irb(main):061:0> b.elements
=> [{:a=>6, :b=>1, :c=>3}, {:a=>1, :b=>2, :c=>3}, {:a=>5, :b=>3, :c=>2}, {:a=>2, :b=>4, :c=>1}, {:a=>1, :b=>4, :c=>7}]
```