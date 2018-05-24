class BonusDrink
  @@bonus_bin = 3
  def self.total_count_for(amount)
    buy_bottle = amount
    emp_bottle = amount       # 未返却の空き瓶
    get_bottle = 0            # ボーナスとしてもらったボトル
    total_bottle = amount

    # while do
    while emp_bottle >= @@bonus_bin
      get_bottle = emp_bottle.div(@@bonus_bin)
      total_bottle += get_bottle
      emp_bottle = emp_bottle - (get_bottle * @@bonus_bin) + get_bottle
    end
    # puts("トータルで飲んだ本数は#{total_bottle}です。")
    return total_bottle
  end
end

BonusDrink.total_count_for(0)
