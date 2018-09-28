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
    greet_players
    grid.create_grid
    loop do
      grid.draw_grid
      grid.receive_choice
      break if grid.check_player_victory
      grid.switch_player
    end
    puts "The winner is: #{grid.who_is_winner?}"
  end
end
