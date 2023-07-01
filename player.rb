class Player
    attr_reader :name, :symbol      #getters
    def initialize(name, symbol)
        @name = name
        @symbol = symbol 
    end
end