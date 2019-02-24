require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  describe 'total_count_for' do
    context '購入本数が、3本よりも少ない場合' do
        specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
        specify { expect(BonusDrink.total_count_for(1)).to eq 1 }
        specify { expect(BonusDrink.total_count_for(2)).to eq 2 }
    end
    context '購入本数が、3本よりも多い場合' do
        specify { expect(BonusDrink.total_count_for(3)).to eq 4 }
        specify { expect(BonusDrink.total_count_for(11)).to eq 16 }
        specify { expect(BonusDrink.total_count_for(50)).to eq 74 }
        specify { expect(BonusDrink.total_count_for(100)).to eq 149 }
    end
  end
end
