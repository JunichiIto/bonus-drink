class BonusDrink
  BONUS_UNIT = 3

  def self.total_count_for(amount)
    @debug_print = "空き瓶#{BONUS_UNIT}本で1本おまけ\n"
    amount += self.bonus_count_for(amount)

    @debug_print += "総合計: #{amount}\n"
    amount
  end

  def self.bonus_count_for(amount)
    @debug_print += "計算対象: #{amount}\n"

    bonus = amount.div(BONUS_UNIT)
    rem  = amount % BONUS_UNIT
    @debug_print += "#{amount}/#{BONUS_UNIT} -> " \
                 +  "#{bonus}*#{BONUS_UNIT} + #{rem} " \
                 +  "(#{bonus}本おまけ, #{rem}本余り)\n"

    rem += bonus
    if rem >= BONUS_UNIT
      bonus += self.bonus_count_for(rem)
    end
    bonus
  end
end
