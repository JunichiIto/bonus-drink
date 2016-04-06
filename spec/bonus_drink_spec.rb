require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do#test coment
  specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
end