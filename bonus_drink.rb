class BonusDrink
  @@buy_count = 0
  @@bonus_count = 0
  def self.buy_count_for(amount)
    @@buy_count = amount
    amount
  end
  def self.bonus_count_for(amount)
    @@bonus_count += amount / 3
    if amount / 3 >= 3 then
      bonus_count_for(amount / 3)
    end
    @@bonus_count
  end
  def self.total_count_for(amount)
    (buy_count_for(amount) + bonus_count_for(amount)) / 3 + @@buy_count
  end
end
