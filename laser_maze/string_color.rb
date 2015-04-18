class String
  def black; "\033[30m#{self}\033[0m" end
  def red;   "\033[31m#{self}\033[0m" end
  def green; "\033[32m#{self}\033[0m" end
end