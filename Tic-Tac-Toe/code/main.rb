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
print "Welcome to Tic Tac Toe game"

end

def game_start()
print "Game starts"
end



game_is_open
game_start
