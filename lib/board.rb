class Board
    attr_accessor :array, :board_case_a1, :board_case_a2, :board_case_a3, :board_case_b1, :board_case_b2, :board_case_b3, :board_case_c1, :board_case_c1, :board_case_c2, :board_case_c3

    def initialize(board_case_a1, board_case_b1, board_case_c1, board_case_a2, board_case_b2, board_case_c2, board_case_a3, board_case_b3, board_case_c3)
        @board_case_a1 = board_case_a1
        @board_case_a2 = board_case_a2
        @board_case_a3 = board_case_a3
        @board_case_b1 = board_case_b1
        @board_case_b2 = board_case_b2
        @board_case_b3 = board_case_b3
        @board_case_c1 = board_case_c1
        @board_case_c2 = board_case_c2
        @board_case_c3 = board_case_c3
        @array = []
        @array << board_case_a1 << board_case_b1 << board_case_c1 << board_case_a2 << board_case_b2 << board_case_c2<< board_case_a3 << board_case_b3 << board_case_c3
    end

    #WE HAVE HARE THE VIEW OF THE BOARD 
    def show_board
        puts "  a  b  c"
        puts "1" + @array[0].view + @array[1].view + @array[2].view
        puts "2" + @array[3].view + @array[4].view + @array[5].view
        puts "3" + @array[6].view + @array[7].view + @array[8].view
    end

end