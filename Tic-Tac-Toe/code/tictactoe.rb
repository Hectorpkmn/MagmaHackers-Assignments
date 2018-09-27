require_relative 'grid'
require_relative 'players'

class TicTacToe
  attr_accessor :grid, :jugador_x

  def initialize
    @grid = Grid.new
    @jugador_x = Players.new
#    @respuesta = Players.player_1_envia_coodernada
  end

  def greet_players
    first_game = "This is the first game"
    p1_turn = "Turn of the player 1"

    puts "Welcome to Tic Tac Toe game"
    @last_game_result = first_game
    @player_turn = p1_turn
    puts "#{@last_game_result} and it is #{@player_turn} \n"
    puts "\nGame starts"
  end

  def start_game
    greet_players
    @grid.create_grid
    @grid.draw_grid
    #Hardcoding next steps by now for testing purpose
    @jugador_x.player_1_moves
    @grid.receive_choice(4)
    @grid.draw_grid
#    @jugadores.player_2_moves
  end
end
