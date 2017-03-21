class Fixnum
	def seconds
		self
	end

	def minutes
		self * 60
	end

	def hours
		self * 60 * 60
	end

	def days
		self * 60 * 60 * 24
	end
end

max = Time.now + 2.days + ("hello world".length).days

# Time.gm(year,month,day,hour,min,sec,msec)
# Time.utc(year, month, day, hour, min, sec, msec)


puts Time.gm(2007,5).to_s
puts Time.gm(2007,5).to_i

gina_death_date = Time.gm(2013,11,10)
t = Time.at(gina_death_date)
puts ("year: ") + t.year.to_s + ("\nmonth: ") + t.month.to_s + ("\nday: ")+ t.day.to_s

rice_on_square = 1
64.times do |square|
	puts("on square #{square + 1} you have #{rice_on_square} grains of rice")
	rice_on_square *= 2
end


