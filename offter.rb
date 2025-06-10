# Base class for all promotional offers
# Subclasses should implement their own apply method to define specific discount logic
class Offer
    # Apply the offer to a list of items
    # @param items [Array<Product>] List of products to apply the offer to
    # @return [Array<Product>] Modified list of products with discounts applied
    def apply(items)
      items
    end
end