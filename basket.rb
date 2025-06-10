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

end