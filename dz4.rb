p "Введите длину массива"
m = gets.to_i
massive = []

loop do    
    p "Введите элементы массива"
    x = gets.to_i
    massive << x
    if massive.count == m
        break
    end
end

def perebor(k)
    count = -1
    chet = nil
    nechet = nil
    hash = {}
    k.each do |x| 
        if  (count += 1) % 2 == 0
            chet = x
        else
            nechet = x 
            hash[chet] = nechet  
        end  
    end
    return hash
end
p perebor(massive)