load 'magic_handler.rb'
load 'formatters/json_fmt.rb'


MagicHandler.new.perform_numbers(1, 30)
MagicHandler.new(JSONFormatter.new).perform_numbers(31, 100)


#Only FizzBuzz
handler = MagicHandler.new
handler.matchers = [FizzBuzzMatcher.new]
handler.perform_numbers(1, 100)