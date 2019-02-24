class BonusDrink
  def self.total_count_for(amount)
    if amount <= 2
      amount
    else
      if amount.even?
        amount + (amount.div(2) - 1)
      else
        amount + (amount - 1).div(2)
      end
    end
  end
end
