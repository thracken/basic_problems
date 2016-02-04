module Mastermind
  class Player
    attr_reader :name
    def initialize
      get_name
    end

    def get_name
      print "What's your name? "
      @name = gets.chomp
    end
  end

  class Combination
  end

  class Player_Guess < Combination
    def get_guess
    end

    def feedback
    end
  end

  class Solution < Combination
  end

  class Game
    def play
    end
  end
end
