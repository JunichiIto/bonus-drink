class BonusDrink
  def self.total_count_for(amount)
    total_count = amount
    rest_bottles = amount
    while new_bottles(rest_bottles) > 0 do
      new_bottles = new_bottles(rest_bottles)
      rest_bottles = new_bottles + rest_bottles % 3
      total_count += new_bottles
    end
    return total_count
  end

  def self.new_bottles(amount)
    return amount / 3
  end

end
