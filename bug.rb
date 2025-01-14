```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
puts my_object.value #=> 10

my_object.instance_variable_set(:@value, 20)
puts my_object.value #=> 20

#The following will raise an error if value method is not defined
my_object.value = 30 # NoMethodError: undefined method `value=' for #<MyClass:0x00007f8b938b08f0>
```