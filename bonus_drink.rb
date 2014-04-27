class BonusDrink
  def self.total_count_for(amount)
    amount.zero? ? 0 : amount + (amount - 1) / 2
  end
end