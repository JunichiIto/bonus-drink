class BonusDrink
  def self.total_count_for(amount)
    sho, amari = amount.divmod(3)
    returned_bottles = sho * 3
    existing_bottles = sho + amari

    returned_bottles + (existing_bottles > 2 ? total_count_for(existing_bottles) : existing_bottles)
  end
end