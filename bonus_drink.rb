class BonusDrink
  def self.total_count_for(amount)
    amount + amount.pred.abs / 2
  end
end