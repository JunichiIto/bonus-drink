class BonusDrink
  def self.total_count_for(amount)
    @print_str = ""
    amount += self.bonus_count_for(amount)

    #amount
    @print_str += "総合計: #{amount}\n"
  end

  def self.bonus_count_for(amount)
    @print_str += "計算対象: #{amount}\n"

    bonus = amount.div(3)
    rem  = amount % 3
    @print_str += "#{amount}/3 -> #{bonus}*3 + #{rem} (#{bonus}本おまけ, #{rem}本余り)\n"

    rem += bonus
    if rem >= 3
      bonus += self.bonus_count_for(rem)
    end
    return bonus
  end
end
