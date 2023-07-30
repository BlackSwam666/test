p "Enter date:"
n = gets.to_i
p "Enter month:"
x = gets.strip
@days = ["mon", "tue", "wen", "thu", "fri", "sat", "sun"] * 53
@months = ["jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec"] 
 
def get_month(number, month) 
    month = {} 
    (1..number).each do |i| 
        month[i] = @days[i-1] 
    end 
    (1..number).each do |i| 
        @days.delete_at(0) 
    end 
    return month 
end 
count = -1 
year = {}
@months.each do |i| 
    if (count += 1) % 2 == 0 
        year[i] = get_month(31, i) 
    elsif i == "feb" 
        year[i] = get_month(28, i) 
    else 
        year[i] = get_month(30, i) 
    end
end
a = 0
year[x].select {|i| i if i >= n}.each do |k,v|
    if (a % 2) == 0
        p "maths - #{k} #{v}" unless v == "sun"
        a +=1 if v == "sun"
    end
    a +=1
end 