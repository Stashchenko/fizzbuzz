class BuzzMatcher

  def can_apply?(number)
    number % 5 == 0
  end

  def call
    "Buzz"
  end

end
