m = (1..10)
d = "o"
b = "o"
require "colorize"
m.each do |i|
   puts (d * i).green + (b * (10 - i)).red
    sleep(5)
end