module TicTacToe
  require "set"

  class Game
    WIN_COMBOS = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]

    def initialize
      @board = Array.new(10)
      player_setup
      @current_player_id = 0
    end

    def player_setup
      print "Player 1: "
      player1 = Player.new
      print "Player 2: "
      player2 = Player.new
      return @players = [[player1, "X"], [player2, "O"]]
    end

    def run
      loop do
        show_board
        take_turn(@current_player_id)

        if game_won?(@current_player_id)
          show_board
          puts "#{current_player_name} wins!"
          play_again
          return
        elsif board_full?
          show_board
          puts "The game is a draw."
          play_again
          return
        end

        switch_players
      end
    end

    def show_board
      col_separator = " | "
      row_separator = "---+---+---"

      labels_for_position = lambda{|position| @board[position] ? @board[position] : position}
      row_for_display = lambda{|row| row.map(&labels_for_position).join(col_separator)}
      row_positions = [[1,2,3], [4,5,6], [7,8,9]]
      rows_for_display = row_positions.map(&row_for_display)
      puts rows_for_display.join("\n" + row_separator + "\n")
      puts ""
    end

    def take_turn(player_id)
      choice = choose_spot(player_id)
      return @board[choice] = @players[player_id][1]
    end

    def choose_spot(player_id)
      loop do
        print "#{current_player_name}, what spot do you want to play your '#{current_player_marker}' on? "
        selection = gets.to_i
        return selection if free_positions.include?(selection)
        puts "That spot is not available. Try again."
      end
    end

    def free_positions
      return Set.new((1..9).select {|position| @board[position].nil?})
    end

    def switch_players
      if @current_player_id == 1
        return @current_player_id = 0
      elsif @current_player_id == 0
        return @current_player_id = 1
      end
    end

    def game_won?(player_id)
      WIN_COMBOS.any? do |combo|
        combo.all? {|position| @board[position] == @players[player_id][1]}
      end
    end

    def board_full?
      return free_positions.empty?
    end

    def play_again
      loop do
        print "Would you like to play again? (Y/N) "
        restart = gets.chomp.downcase
        if restart == "y"
          Game.new.run
        elsif restart == "n"
          return
        end
      end
    end

    def current_player
      return @players[@current_player_id]
    end

    def current_player_name
      return @players[@current_player_id][0].name
    end

    def current_player_marker
      return @players[@current_player_id][1]
    end

  end #Game

  class Player
    attr_reader :name
    def initialize
      get_name
    end

    def get_name
      print "What's your name? "
      @name = gets.chomp
    end
  end #Player

end

include TicTacToe
Game.new.run
