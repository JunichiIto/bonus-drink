class BonusDrink

  PRESENT_COUNT=3
  ONE_TIME_COUNT=PRESENT_COUNT * 2 - 1
  def self.get_present_count(purchased_count)
    return 0 if purchased_count < PRESENT_COUNT
    purchased_count / PRESENT_COUNT
  end

  def self.get_after_present_count(present_count, current_count)
    present_count + current_count - (present_count * PRESENT_COUNT)
  end

  def self.get_simple_total_count(amount)
    amount + get_present_count(amount)
  end

  def self.get_final_count(after_present_count)
    count = 0
    after_present_count = after_present_count
    present_count = get_present_count(after_present_count)
    loop {
      after_present_count = get_after_present_count(present_count, after_present_count)
      present_count = get_present_count(after_present_count)
      count = count + present_count
      break if after_present_count / PRESENT_COUNT <= PRESENT_COUNT # present取得できない件数の場合終了
    }
    count
  end

  def self.total_count_for(amount)
    return amount if amount < PRESENT_COUNT
    return get_simple_total_count(amount) if amount < ONE_TIME_COUNT

    after_present_count = get_after_present_count(get_present_count(amount), amount)

    # total件数取得
    get_simple_total_count(amount) + # 最低1回でもpresentをもらった場合の件数
    get_present_count(after_present_count) +
    get_final_count(after_present_count)

  end

end
