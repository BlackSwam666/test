p "Enter the chislo:"
k = gets.to_i
if 1 <= k && k <= 10^6
   for i in (1..10) do
      if (k % 2 == 0) 
         k = k / 2
      else
         k = (k* 3) + 1
      end
      p k
   end
else
   p "Uncorrected chislo"
end
