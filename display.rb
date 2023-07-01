module Display
    def display_intro
        "Tic-Tac-Toe Game in the console: \n"
    end

    def get_user_name(number)
        "Enter the name of the player #{number}"
    end

    def get_user_symbol
        "Enter a letter or special character to be used as a game marker: "
    end

    def duplicate_symbol(duplicate)
        "It can not be '#{duplicate}'"
    end

    def display_input_warning
        "\e[31mSorry, that is an invalid answer. Please, try again.\e[0m"
    end

    def display_player_turn(name, symbol)
        "#{name}, please enter a number between 1-9 that is available to place '#{symbol}'"
    end

    def display_winner(player)
        "#{player} WINS!!"
    end

    def display_tie
        "It's a draw!!"
    end
end