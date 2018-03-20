def grandfatherClock (&clockBloc)
	number = Time.now.hour % 12
	if number == 0 then number = 12 end
	clockBloc.call number
end

def alarmClock (&clockBloc)
	number = Time.now.hour % 12
	number >= 12? pm = true : pm = false
	number = number % 12 
	if number == 0 then number = 12 end
	clockBloc.call number, pm
end


grandfatherClock do |hour|
	hour.times {print("Dong...")}
	puts ""
end

alarmClock do |hour, pm|
	if hour >= 11 && pm
		puts "Bed time"
	elsif hour <= 8 && (not pm)
		puts "Why are you up so early?"
	else
		puts "Enjoy your day"
	end
end