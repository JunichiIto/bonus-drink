class BonusDrink
  def self.total_count_for(amount)
    return amount if amount < 3
    return amount + (amount - 1) / 2 if amount >= 3
  end
end
