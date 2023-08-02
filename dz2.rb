m = (1..10)
d = "o"
b = "o"
require "colorize"
m.each do |i|
    print "\r%-5s" % (((d * i).green + (b * (10 - i)).red)).overlined
    sleep(5)
end