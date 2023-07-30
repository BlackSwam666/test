@days = ["mon", "tue", "wen", "thu", "fri", "sun", "sat"] * 53 
 
def get_months(number, month) 
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
@months = ["jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec"] 
@months.each do |i| 
 if (count += 1) % 2 == 0 
 p get_months(31, i) 
 elsif i == "feb" 
 p get_months(28, i) 
 else 
 p get_months(30, i) 
 end 
end
