require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do#test coment
  it "買った本数" do
    expect(BonusDrink.buy_count_for(3)).to eq 3
  end
  specify { expect(BonusDrink.total_count_for(3)).to eq 4 }
end
