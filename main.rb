require_relative 'board.rb'
require_relative 'display.rb'
require_relative 'player.rb'
require_relative 'game.rb'

def play_game
    game = Game.new
    game.play
    repeat_game
end

def repeat_game
    puts "New Game? Y/N: "
    input = gets.chomp.downcase
    if input == 'y'
        play_game
    elsif input == 'n'
        puts "Thanks for playing!"
    else
        puts "\e[31mInvalid Input!e[0m"
        repeat_game
    end
end

play_game