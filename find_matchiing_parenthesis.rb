def parentheticals(sentense, first_index)
  parens = 1
  sentense.split('').each_with_index do |char, idx|
    next unless idx > first_index

    parens += 1 if char == '('
    parens -= 1 if char == ')'

    p "parens: #{parens}, char: #{char}, idx: #{idx}"

    return idx if parens == 0
  end
end

sentense = "Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing."
first_index = 10

p parentheticals(sentense, first_index)