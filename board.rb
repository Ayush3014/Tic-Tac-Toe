class Board
    attr_reader :cells
    WIN_COMBOS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]].freeze

    def initialize
        @cells = [1,2,3,4,5,6,7,8,9]
    end

    def show
        puts <<-HEREDOC
        #{cells[0]} | #{cells[1]} | #{cells[2]}
        ---+---+---
        #{cells[3]} | #{cells[4]} | #{cells[5]}
        ---+---+---
        #{cells[6]} | #{cells[7]} | #{cells[8]}

        HEREDOC
    end

    def update_board(number, symbol)
        @cells[number] = symbol 
    end

    def valid_move?(number)
        cells[number - 1] == number
    end

    def full?
        cells.all? { |cell| cell.to_s =~ /[^0-9]/ }
    end

    def game_over?
        WIN_COMBOS.any? do |combo|
            [cells[combo[0]], cells[combo[1]], cells[combo[2]]].uniq.length == 1
        end
    end
end