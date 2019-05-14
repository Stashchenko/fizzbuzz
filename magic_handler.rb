require_relative 'formatters/console_fmt'
require_relative 'matchers/fizz_matcher'
require_relative 'matchers/buzz_matcher'
require_relative 'matchers/fizzbuzz_matcher'

class MagicHandler
  attr_writer :matchers

  def initialize(formatter = ConsoleFormatter.new)
    @formatter = formatter
    @matchers = [FizzBuzzMatcher.new, FizzMatcher.new, BuzzMatcher.new]
  end

  def perform_numbers(from, to)
    (from..to).each do |i|
      @matchers.each do |m|
        break @formatter.print(i, m.call) if m.can_apply?(i)
      end
    end
  end

end






