require File.expand_path(File.dirname(__FILE__) + '/bonus_drink')

amount = ARGV[0].to_i
puts BonusDrink.total_count_for(amount)
