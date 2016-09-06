class BonusDrink
  BONUS_UNIT = 3

  def self.total_count_for(amount)
    @print_str = "空き瓶#{BONUS_UNIT}本で1本おまけ\n"
    amount += self.bonus_count_for(amount)

    #amount
    @print_str += "総合計: #{amount}\n"
  end

  def self.bonus_count_for(amount)
    @print_str += "計算対象: #{amount}\n"

    bonus = amount.div(BONUS_UNIT)
    rem  = amount % BONUS_UNIT
    @print_str += "#{amount}/#{BONUS_UNIT} -> " \
                + "#{bonus}*#{BONUS_UNIT} + #{rem} " \
                + "(#{bonus}本おまけ, #{rem}本余り)\n"

    rem += bonus
    if rem >= BONUS_UNIT
      bonus += self.bonus_count_for(rem)
    end
    return bonus
  end
end
