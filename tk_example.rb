require 'tk'

root = TkRoot.new { title "First Example" }
TKLabel.new(root) do
	text 'A sample GUI using TK'
	pack { padx 15; pady 15; side 'left' }
end
Tk.mainloop
