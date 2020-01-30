class Game 
    attr_accessor :name_player_1, :name_player_2, :played_fields

    def initialize(name_player_1, name_player_2)
        @name_player_1 = name_player_1
        @name_player_2 = name_player_2
        @played_fields = [] #THE PLAYED_FIELDS ARRAY CAN GIVE US THE FIELDS ALREADY TAKEN 
    end

    def turn
        puts "Where do you want to play ? 'letter+number'"
        print ">"
        selection = gets.chomp
    end
end
