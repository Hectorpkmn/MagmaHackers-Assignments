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

    puts "Welcome to Tic Tac Toe game"
    puts "\nGame starts"
  end

  def start_game
#    winner = false
    greet_players
    grid.create_grid
    grid.draw_grid && grid.receive_choice until grid.check_player_victory
#    puts "The winner is: #{grid.who_is_winner?}"
  end
end
