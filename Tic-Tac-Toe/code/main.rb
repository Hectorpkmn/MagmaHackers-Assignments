=begin

#-------------------------------
    Pseudocode

Game is open
  set game as first game
  set Player 1 starts

Game starts
  Grid is displayed
  Iteration is started until a match is created or turn 8 is reached
    starting player chooses slot
    following player chooses slot
    following player chooses slot
    game ends
    game asks if wnat to keep playing
      If yes then check values and start a new game plus
      If no then game ends

=end
class TicTacToe
  def initialize
    first_game = "This is the first game"
    p1_turn = "Turn of the player 1"

    puts "Welcome to Tic Tac Toe game"
    @last_game_result = first_game
    @player_turn = p1_turn
    puts "#{@last_game_result} and it is #{@player_turn} \n\n"
    puts "\nGame starts"
    @tablero = Grid.new()
    @jugadores = Players.new()
  end

  def start_game
    @tablero.create_grid
    @tablero.draw_grid
    #Hardcoding next steps by now for testing purpose
    @jugadores.player_1_moves
    @tablero.receive_choice(4)
    @tablero.draw_grid
#    @jugadores.player_2_moves
  end
end

class Grid
  def create_grid
    @grid = {
      "1" => "[free]",
      "2" => "[free]",
      "3" => "[free]",
      "4" => "[free]",
      "5" => "[free]",
      "6" => "[free]",
      "7" => "[free]",
      "8" => "[free]",
      "9" => "[free]"
    }
  end

  def draw_grid
    @grid.each do |slot,value|
      print slot + "," + value + " "
      print "\n" if (slot == "3") || (slot == "6")
    end
  end

  def receive_choice(choice)
    @grid.each {|n, p| @grid[choice.to_s] = "X" }
    puts "Value received was: #{choice}"
  end
end

class Players
  def player_1_moves()
    puts "\n\nTurn of the player ONE\n"
    print "please choose a free slot by typing its number: "
    p1NumberChosen = gets.to_i
    invalidCounter = 0
    until (p1NumberChosen != 0) && (p1NumberChosen <= 9)
      if invalidCounter == 5
        p1NumberChosen = 0
        break
      else
      puts "\nThat's not a valid input."
      invalidCounter += 1
      puts "invalidCounter: #{invalidCounter}"
      print "\nplease type a valid number: "
      p1NumberChosen = gets.to_i
      end
    end
    puts "Your selected slot number was: #{p1NumberChosen}"
    return p1NumberChosen, "X"
  end

  def player_2_moves()
    puts "\n\nTurn of the player TWO\n"
    print "please choose a free slot by typing its number: "
    p2NumberChosen = gets.to_i
    invalidCounter = 0
    until (p2NumberChosen != 0) && (p2NumberChosen <= 9)
      if invalidCounter == 5
        p2NumberChosen = 0
        break
      else
      puts "\nThat's not a valid input."
      invalidCounter += 1
      puts "invalidCounter: #{invalidCounter}"
      print "\nplease type a valid number: "
      p2NumberChosen = gets.to_i
      end
    end
    puts "Your selected slot number was: #{p2NumberChosen}"
    return p2NumberChosen
  end
end

ejemplo1 = TicTacToe.new()
ejemplo1.start_game
