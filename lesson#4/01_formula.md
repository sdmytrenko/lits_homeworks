Описати клас `Formula`, конструктор якого буде приймати число. Клас повинен мати наступні методи:
 - `add`
 - `subtract`
 - `divide`
 - `multiply`
 - `result`
 - `to_s`

І працюватиме наступним чином:
```ruby
irb(main):109:0> a = Formula.new 5
=> <Formula: 5>
irb(main):110:0> a.add 10
=> 15
irb(main):111:0> a.subtract 3
=> 12
irb(main):112:0> a.divide 6
=> 2
irb(main):113:0> a.add 8
=> 10
irb(main):114:0> a.multiply 8
=> 80
irb(main):115:0> a - 12
=> 68
irb(main):116:0> a / 2
=> 34
irb(main):117:0> a + 7
=> 41
irb(main):118:0> a * 3
=> 123
irb(main):119:0> a.result
=> 123
irb(main):120:0> a.to_s
=> "((((5 + 10 - 3) / 6 + 8) * 8 - 12) / 2 + 7) * 3"
```

`115-118` - не обов'язково реалізовувати. Але було б круто :wink: