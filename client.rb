require 'socket'

host = "localhost"
port = 1500

sock = TCPSocket.open(host, port)

while line = sock.gets
	puts line.chomp
end

sock.close

