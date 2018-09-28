require_relative 'grid'
require_relative 'players'

class TicTacToe
  attr_accessor :grid, :players, :piece

  def initialize
    @grid = Grid.new
    @players = Players.new
    @piece = "X"
  end

  def greet_players
    first_game = "This is the first game"
    p1_turn = "Turn of the player 1"

    puts "Welcome to Tic Tac Toe game"
    puts "#{first_game} and it is #{p1_turn} \n"
    puts "\nGame starts"
  end

  def start_game
    greet_players
    grid.create_grid
    #Hardcoding next steps by now for testing purpose
    loop do
      grid.draw_grid
      grid.receive_choice
    end
  end
end
