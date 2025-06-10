require_relative 'catalogue'
require_relative 'offer'
require_relative 'basket'

# This script creates a basket with a set of products and applies offers to calculate the total price.
# The basket is tested with different combinations of product codes.
# The `RedWidgetHalfPriceOffer` is applied to give a discount on every second Red Widget (R01).
# For each combination of products, the total price (after applying offers and delivery fees) is calculated and printed.

offers = [RedWidgetHalfPriceOffer.new]  # List of offers to apply
basket = Basket.new(CATALOGUE, Delivery, offers)

# Test various product combinations and print the total price for each basket
[%w[B01 G01], %w[R01 R01], %w[R01 G01], %w[B01 B01 R01 R01 R01]].each do |codes|
  b = Basket.new(CATALOGUE, Delivery, offers)  # Create a new basket for each test case
  codes.each { |code| b.add(code) }  # Add products to the basket
  puts "#{codes.join(', ')} => Total: #{b.total}"  # Output the total price for this combination
end