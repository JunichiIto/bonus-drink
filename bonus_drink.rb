class BonusDrink
  def self.total_count_for(amount)
    new(amount).total_count
  end
  
  def initialize(drinks, empties = 0, drunks = 0)
    @drinks = drinks   #ジュースの数
    @empties = empties #空き瓶の数
    @drunks = drunks   #飲んだ本数
  end

  #飲めなくなるまで飲む、交換を繰り返す
  def total_count
    until @drinks.zero?
      drink
      exchange
    end
    @drunks
  end

  #ジュースを飲む
  def drink 
    @empties += @drinks
    @drunks += @drinks
    @drinks = 0
    self
  end

  #空き瓶３本でジュース１本交換
  def exchange
    bonus, @empties = @empties.divmod(3)
    @drinks += bonus
    self
  end
end