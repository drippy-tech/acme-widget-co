# Acme Widget Co - Ruby Basket System

## Overview
This is a Ruby-based shopping basket system designed to handle product cataloging, calculating delivery charges, and applying special offers. The system is flexible and easy to extend, allowing you to add new products, promotional rules, and delivery rules as needed.

## System Components

### Core Classes

#### Basket (`basket.rb`)
- The main component of the shopping cart system.
- Manages adding products and calculating totals.
- Integrates with delivery rules and promotional offers.
- Returns prices formatted with the currency symbol.

#### Product (`product.rb`)
- Represents individual products in the system.
- Stores key details like code, name, and price.
- Used throughout the system for product identification.

#### Offer System (`offer.rb`)
- A base `Offer` class for defining promotional rules.
- Currently, it includes the `RedWidgetHalfPriceOffer` for Red Widgets.
- It’s easy to extend if you want to add new offers in the future.

#### Delivery (`delivery.rb`)
- Handles calculating delivery fees based on the order subtotal.
- The fee structure changes depending on the total price of the order.

## Usage

### Basic Usage
Here’s how you can use the system:

```ruby
# Create a product catalogue
catalogue = {
  'R01' => Product.new(code: 'R01', name: 'Red Widget', price: 32.95),
  'G01' => Product.new(code: 'G01', name: 'Green Widget', price: 24.95),
  'B01' => Product.new(code: 'B01', name: 'Blue Widget', price: 7.95)
}

# Initialize the basket with the catalogue and any offers
basket = Basket.new(catalogue, delivery_rules, [RedWidgetHalfPriceOffer.new])

# Add products to the basket
basket.add('R01')  # Add a Red Widget
basket.add('G01')  # Add a Green Widget

# Calculate the total price
total = basket.total  # Returns the formatted price (e.g. "$57.90")