class FizzMatcher

  def can_apply?(number)
    number % 3 == 0
  end

  def call
    "Fizz"
  end

end