# This is the product catalogue, where each product is stored with its unique code.
# It includes a few sample products: Red, Green, and Blue Widgets, each with its price.
# The catalogue helps look up products when adding them to the basket or applying offers.
CATALOGUE = {
  'R01' => Product.new(code: 'R01', name: 'Red Widget', price: 32.95),
  'G01' => Product.new(code: 'G01', name: 'Green Widget', price: 24.95),
  'B01' => Product.new(code: 'B01', name: 'Blue Widget', price: 7.95)
}