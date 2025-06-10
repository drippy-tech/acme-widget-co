# Special offer that applies half price to every second Red Widget (R01)
# Example: Buy 2 Red Widgets, get the second one at half price
class RedWidgetHalfPriceOffer < Offer
    # Apply the half-price offer to Red Widgets
    # @param items [Array<Product>] List of products to apply the offer to
    # @return [Array<Product>] List with every second Red Widget at half price
    def apply(items)
      reds = items.select { |item| item.code == 'R01' }
      others = items.reject { |item| item.code == 'R01' }
  
      discounted_reds = []
      reds.each_slice(2) do |pair|
        if pair.size == 2
          discounted_reds << pair[0]
          half_price = pair[1].price / 2.0
          discounted_reds << Product.new(code: 'R01', name: 'Red Widget (discounted)', price: half_price)
        else
          discounted_reds << pair[0]
        end
      end
  
      discounted_reds + others
    end
  end