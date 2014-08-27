require './pizza'

describe Pizza do
  describe '.initialize' do
    it 'records all of the toppings' do
      toppings = [
        Topping.new('mushrooms', vegetarian: true),
        Topping.new('pepperoni')
      ]
      pizza = Pizza.new(toppings)
    
    expect(pizza.toppings).to be_a(Array)
    end
    it 'defaults the toppings to cheese only, if the pizza has no toppings' do
      pizza = Pizza.new

      expect(pizza.toppings.size).to eq(1)
      expect(pizza.toppings.first.name).to eq('cheese')
    end
  end
end

describe Topping do
  describe '.initialize' do 
    it "sets the name of the topping" do 
      topping = Topping.new 'bell pepper', vegetarian: true

      expect(topping.vegetarian).to eq(true)
    end
  end
end
