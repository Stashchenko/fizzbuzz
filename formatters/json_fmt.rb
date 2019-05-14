require 'json'

class JSONFormatter
  def print(number, string)
    h = {number: number, string: string}
    puts h.to_json
  end
end