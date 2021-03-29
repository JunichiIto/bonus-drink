class BonusDrink
  def self.total_count_for(amount)
    drink = ->(left, drinked){
            return drinked if left.zero?
            i = left / 3
            d = i.zero? ? left : i * 3
            drink.(left - d + i, drinked + d)
        }
        drink.(amount, 0)
  end
end