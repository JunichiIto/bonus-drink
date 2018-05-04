class BonusDrink
  def self.total_count_for(amount)
  	# 3本未満の場合はシンプルにamount の値が答えとなる
    return amount if amount < 3
    # 3本以上の場合はプレゼントの本数を加えた値が答えとなる
    return amount + (amount - 1) / 2 if amount >= 3
  end
end
