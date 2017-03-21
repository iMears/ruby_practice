class Dungeon
	attr_accessor :player

	def start(location)
		@player.location = location
		show_current_description
	end
	
	def show_current_description
		puts find_room_in_dongeon(@player.location).full_description 
	end

	def find_room_in_dungeon(reference)
		@rooms.detect { |room| room.reference == reference }
	end

	class Room
		def full_description
			@name + "\n\nYou are in " + @description
		end
	end


	def initialize(player_name)
		@player = Player.new(player_name)
		@rooms = []
	end

	Player = Struct.new(:name, :location)
	Room = Struct.new(:reference, :name, :description, :connections)

	def add_room(reference, name, description, connections)
		@rooms << Room.(reference, name, description, connections)
	end
end

my_dungeon = Dungeon.new("Max Mears")

my_dungeon.add_room(:largecave, "Large Cave", "a large caernous cave", {
	:west => :smallcave})
my_dungeon.add_room(:smallcave, "Small Cave", "a small, claustrophobic cave", {
	:east => :largecave})

