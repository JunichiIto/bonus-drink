class BonusDrink
  def total_count_for(amount)

    if amount < 3
      amount
    else
      amount + amount.div(3)
    end
  end
end

obj = BonusDrink.new
ret = obj.total_count_for(ARGV[0].to_i)
puts ret
