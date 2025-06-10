# The Delivery class calculates the delivery fee based on the total price.
# If the total is $90 or more, there's no delivery fee.
# If the total is between $50 and $90, the fee is $2.95.
# For totals less than $50, the fee is $4.95.
class Delivery
    def self.fee(total)
      return 0 if total >= 90
      return 2.95 if total >= 50
      4.95
    end
end