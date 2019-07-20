#! /usr/bin/env ruby
class BonusDrink
  def self.total_count_for(amount)
    amount = amount.to_i
    total = amount
    buy = amount / 3
    zan = amount % 3
    total += buy
    buy += zan
    zan = 0
      begin
        zan = buy % 3
        buy /= 3
        total += buy
        buy += zan
        zan = 0
      end while buy > 2
     total
  end
end