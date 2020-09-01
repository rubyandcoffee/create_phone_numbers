module PhoneNumber
  def self.create(numbers)
    numbers.join.gsub(/(\d{3})(\d{3})/, '(\1) \2-\3')
  end
end
