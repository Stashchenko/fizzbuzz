class FizzBuzzMatcher

  def initialize
    @f, @b = FizzMatcher.new, BuzzMatcher.new
  end

  def can_apply?(number)
    @f.can_apply?(number) && @b.can_apply?(number)
  end

  def call
    @f.call + @b.call
  end

end