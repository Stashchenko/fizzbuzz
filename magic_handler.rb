load 'formatters/console_fmt.rb'
load 'matchers/fizz_matcher.rb'
load 'matchers/buzz_matcher.rb'
load 'matchers/fizzbuzz_matcher.rb'

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






