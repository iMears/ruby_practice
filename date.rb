require 'date'
today = Date.today.strftime("%A")
day_of_year = Date.today.yday
puts("happy #{today}...It's day #{day_of_year} of the year!")

modifier = "very "
mood = "excited"
puts ("I am #{modifier * 3 + mood} for today's class!")