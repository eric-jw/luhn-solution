module Luhn
  def self.is_valid?(number)
    number.digits.each_with_index.reduce(0) do |inc, (num, i)|
      num *= 2 if i.odd?
      num -= 9 if num > 9
      inc + num
    end % 10 == 0
  end
end