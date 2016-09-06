class BonusDrink
  def self.total_count_for(amount)
    @amount = amount
    @print_str = ""
    self.count_for(amount)

    #@amount
    @print_str += "総合計: #{@amount}\n"
  end

  def self.count_for(amount)
    @print_str += "計算対象: #{amount}\n"

    bonus = amount.div(3)
    rem  = amount % 3
    @amount += bonus

    @print_str += "#{amount}/3 -> #{bonus}*3 + #{rem} (#{bonus}本おまけ, #{rem}本余り)\n"
    @print_str += "合計: #{@amount}\n"

    rem += bonus
    if rem >= 3
      self.count_for(rem)
    else
      return bonus
    end
  end
end
