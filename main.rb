require_relative 'magic_handler'
require_relative 'formatters/json_fmt'


MagicHandler.new.perform_numbers(1, 30)
MagicHandler.new(JSONFormatter.new).perform_numbers(31, 100)


#Only FizzBuzz
handler = MagicHandler.new
handler.matchers = [FizzBuzzMatcher.new]
handler.perform_numbers(1, 100)