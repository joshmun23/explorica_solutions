# Write a function to reverse a string.

# Example output for "Madam, I'm Adam":   madA m'I ,madam
require 'pry'
def reverse_string(string)
  raise "Input must be a string!" unless string.is_a?(String)

  result = ""

  (string.length-1).downto(0) do |i|
    result += string[i]
  end

  puts result
end

reverse_string("Madam, I'm Adam")
