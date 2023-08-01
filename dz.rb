chisla = [1,2,3,4,5,6,7,8,0]

def chet(chisla)
    massive = []
    chisla.each do |i|
        massive << i if i % 2 == 0
    end
    return massive
end
p chet(chisla)