$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'game'
require 'board'
require 'board_case'
require 'bundler'


class App

    #WELCOMING OUR PLAYERS
    puts "Welcome to the Tic-tac-toe"
    puts "Player 1, what is your name ?"
    print ">"
    name_1 = gets.chomp
    player_1 = Player.new(name_1)
    puts "And you, Player 2, what is your name ?"
    print ">"
    name_2 = gets.chomp
    player_2 = Player.new(name_2)
    puts "Welcome #{player_1.name} and #{player_2.name} !"
    puts "Let's play !"

    #INITIALIZING THE GAME
    new_game = Game.new(player_1, player_2)
    board_case_a1 = BoardCase.new("a1")
    board_case_a2 = BoardCase.new("a2")
    board_case_a3 = BoardCase.new("a3")
    board_case_b1 = BoardCase.new("b1")
    board_case_b2 = BoardCase.new("b2")
    board_case_b3 = BoardCase.new("b3")
    board_case_c1 = BoardCase.new("c1")
    board_case_c2 = BoardCase.new("c2")
    board_case_c3 = BoardCase.new("c3")
    board = Board.new(board_case_a1, board_case_b1, board_case_c1, board_case_a2, board_case_b2, board_case_c2, board_case_a3, board_case_b3, board_case_c3)
    board.show_board

    #THE GAME WITH AN INFINITE WHILE UNTIL SOMEONE WINS
    #BEGINNING WITH player_1
    while 1 == 1 do
    puts "#{player_1.name} !"

    #HE SELECT HIS CHOICE
    player_1_selection = new_game.turn

    #IF HE CHOSED A PLAYED FIELD, OR A WRONG SELECTION, HE HAS TO REDO HIS CHOICE
    while new_game.played_fields.include?(player_1_selection.to_s) || player_1_selection.length < 2 || player_1_selection[0] != "a" &&  player_1_selection[0] != "b" &&  player_1_selection[0] != "c" || player_1_selection[1] != "1" && player_1_selection[1] != "2" && player_1_selection[1] != "3" do
        if new_game.played_fields.include?(player_1_selection.to_s) then
            puts "Little rascal you can't put your cross here !"
        else
            puts "This is incorrect : you have to enter a right field. For instance : 'a1'"
        end
        player_1_selection = new_game.turn
    end


    #IF HIS CHOICE IS OK, WE CAN PUT IT IN HIS ARRAY, AND IN THE ARRAY OF PLAYED FIELDS
    player_1.array << player_1_selection
    new_game.played_fields << player_1_selection
    #BOARD CHANGES
    board.array.map.each do |x|
        if player_1_selection == x.place then
            x = x.show_case_crossed
        end
    end
    puts board.show_board

    #IF ALL THE FIELDS ARE TAKEN, THE GAME STOPS, THIS IS A DEUCE
    if new_game.played_fields.length == 9 then
        puts "This is a deuce !"
        break
    end

    #IF HIS ARRAY CONTAINS THREE FIELDS THAT ARE IN THE SAME LINE, HE WINS
    if player_1.winner? then
        puts "The winner is #{player_1.name}!"
        break
    end

    ######## player_2 TURN IS THE SAME THAN player_1 ########

    #player_2 TURN (SAME AS player_1)
    puts "#{player_2.name} !"
    player_2_selection = new_game.turn
    while new_game.played_fields.include?(player_2_selection.to_s) || player_2_selection.length < 2 || player_2_selection[0] != "a" &&  player_2_selection[0] != "b" &&  player_2_selection[0] != "c" || player_2_selection[1] != "1" && player_2_selection[1] != "2" && player_2_selection[1] != "3" do
        if new_game.played_fields.include?(player_2_selection.to_s) then
            puts "Little rascal you can't put your round here !"
        else
            puts "This is incorrect : you have to enter a right field. For instance : 'a1'"
        end
        player_2_selection = new_game.turn
    end
    player_2.array << player_2_selection
    new_game.played_fields << player_2_selection
    board.array.map.each do |x|
        if player_2_selection == x.place then
            x = x.show_case_rounded
        end
    end
    puts board.show_board
    if player_2.winner? then
        puts "The winner is #{player_2.name} !"
        break
    end
    end
end