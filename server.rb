require 'socket'

server = TCPServer.open(1500)
loop {
	client = server.accept
	client.puts("hello, client!")
	client.puts("goodbye, client!")
	client.puts("clossing connection now...")
	client.close
}