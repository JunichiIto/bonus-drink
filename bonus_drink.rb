class BonusDrink
  def self.total_count_for(amount)
    drinks = emp_bottle = amount

    while emp_bottle > 2
      result = emp_bottle.divmod(3)
      drinks += result[0]
      emp_bottle = result[0] + result[1]
    end
    drinks
  end
end