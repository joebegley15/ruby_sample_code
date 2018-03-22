def payedOff(balance, period, iRte)
	max = balance
	min = 0
	balaceReset = balance
	payment = ((max + min) / 2).round(2)
	return payment
end

puts payedOff(17000, 48, 1)