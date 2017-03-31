def reverse_string_loop(string)
  return nil if string == ''
  return string if string.length == 1

  reversed_string = ''
  iterations = string.length

  while iterations > 0
    iterations -= 1
    reversed_string << string[iterations]
  end

  reversed_string
end