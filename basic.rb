def is_greeting?(word)
	if word == 'hi' || word == 'hello'
		return true
	else
		return false
	end 
end
 puts("hi is a greeting #{is_greeting?} 'hi' ")
 puts("bye is a greeting #{is_greeting?} 'bye' ")