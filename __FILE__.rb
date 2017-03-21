class A

end


p __FILE__
p $0

if __FILE__ == $0
  puts "hello"

  p A.new
end