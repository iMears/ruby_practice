def reverse_string_recursive(string)
  return nil if string == ''
  return string if string.length == 1

  "#{string[-1]}#{reverse_string_recursive(string[0...-1])}"
end