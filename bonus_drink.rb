class BonusDrink
  def self.total_count_for(amount)
    service_amount_condition = 3

    temp_amount = amount
    service_amount = -1
    service_amount_before = -1

    loop do
      service_amount = temp_amount.div(service_amount_condition)
      if service_amount == service_amount_before
        break
      end
      temp_amount = amount + service_amount
      service_amount_before = service_amount
    end

    return temp_amount
  end
end