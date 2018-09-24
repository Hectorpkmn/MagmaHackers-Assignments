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

def game_is_open()
  first_game = "This is the first game"
  p1_turn = "Turn of the player 1"

  puts "Welcome to Tic Tac Toe game"
  last_game_result = first_game
  player_turn = p1_turn
  puts "#{last_game_result} and it is #{player_turn} \n\n"
end

def draw_grid()
  print "Game starts\n"

  grid = {
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
  grid.each do |slot,value|
    print slot + "," + value + " "
    print "\n" if (slot == "3") || (slot == "6")
  end
end

def player_1_moves()
  puts "\n\nTurn of the player 1\n"
  puts "please choose a free slot by typing its number: \n"
  numberChosen = gets.to_i
  invalidCounter = 0
  until (numberChosen != 0) && (numberChosen <= 9)
    if invalidCounter == 5
      numberChosen = 0
      break
    else
    puts "That's not a valid input."
    invalidCounter += 1
    puts "invalidCounter: #{invalidCounter}"
    puts "please type a valid number: \n"
    numberChosen = gets.to_i
    end
  end
  puts "Your selected slot number was: #{numberChosen}"
  return numberChosen
end


game_is_open
draw_grid
player_1_moves()
