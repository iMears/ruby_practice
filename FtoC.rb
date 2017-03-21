puts 'What\'s the temperature outside, in Farenheit?'
puts
var = gets.chomp
puts 
puts 'It is' (var.to_i - 32) * 5/9 'degrees celsius, then.'
