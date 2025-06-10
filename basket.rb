#Basket holds products, applies offers, and calculates totals using a catalog, delivery rules, and promotions.
class Basket
  # Initialize a new basket with required dependencies
  # @param catalogue [Hash] Product catalogue mapping codes to Product objects
  # @param delivery_rules [Object] Rules for calculating delivery fees
  # @param offers [Array<Offer>] List of promotional offers to apply
  def initialize(catalogue, delivery_rules, offers = [])
    @catalogue = catalogue
    @offers = offers
    @items = []
  end

  # Adds a product to the basket by its code
  # @param code [String] The product code
  # @raise [RuntimeError] If the product code is not found
  def add(code)
    product = @catalogue[code]
    raise "Unknown product code: #{code}" unless product
    @items << product
  end
end