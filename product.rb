# The Product class represents an individual product with a code, name, and price.
# It's used to store basic product information that can be used in things like shopping carts and offers.
class Product
    attr_reader :code, :name, :price
  
    def initialize(code:, name:, price:)
      @code = code
      @name = name
      @price = price
    end
end