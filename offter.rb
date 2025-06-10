def apply(items)
    # Separate Red Widgets from other products
    reds = items.select { |item| item.code == 'R01' }
    others = items.reject { |item| item.code == 'R01' }

    # Process Red Widgets in pairs, applying half price to every second one
    discounted_reds = []
    reds.each_slice(2) do |pair|
      if pair.size == 2
        # First widget at full price
        discounted_reds << pair[0]
        # Second widget at half price
        half_price = pair[1].price / 2.0
        discounted_reds << Product.new(code: 'R01', name: 'Red Widget (discounted)', price: half_price)
      else
        # Single widget at full price
        discounted_reds << pair[0]
      end
    end

    # Return all items with discounts applied
    discounted_reds + others
end