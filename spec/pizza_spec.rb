require './pizza'

describe Pizza do
  describe '.initialize' do
    it 'records all of the toppings' do
      toppings = [
        Topping.new('mushrooms', vegetarian: true),
        Topping.new('pepperoni')
      ]
      pizza = Pizza.new(toppings)
    
    expect(pizza.toppings).to be_a(toppings)
    end
  end
end

describe Topping do
  it "exists" do
    expect(Topping).to be_a(Class)
  end
  describe '.initialize' do 
    it "sets the name of the topping" do 
      topping = Topping.new 'bell pepper', vegetarian: true

      expect(topping.vegetarian).to eq(true)
    end
  end
end
