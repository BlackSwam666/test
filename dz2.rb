m = (1..10)
d = "_"
b = "_"
require "colorize"
m.each do |i|
    print "\r%-5s" % (((d * i).green + (b * (10 - i)).red))
    sleep(5)
end