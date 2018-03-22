def payedOff(balance, period, iRte)
	max = balance
	min = 0
	balaceReset = balance
	payment = ((max + min) / 2).round(2)
	conditional = true
	while conditional do
		balance = balaceReset
		payment = ((max + min) / 2).round(2)
		period.times do
			balance = ((balance - payment) * (1 + (iRte) / 12)).round(2)
		end
		if balance > -(0.5) and balance < 0
			conditional = false
		elsif balance < 0
			max = payment
		else
			min = payment
		end
	end
	return payment
end

puts "How much do you owe?"
thisBalance = gets.strip.to_i
puts "How long do you have to pay it off?"
thisMonths = gets.strip.to_i
puts "What is your interest rate?"
thisRate = gets.strip.to_i

puts payedOff(thisBalance, thisMonths, thisRate)
